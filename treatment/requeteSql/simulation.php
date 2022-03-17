<?php
require "../connexionBdd.php";

// Récupére tous les ID des modules
$req = $db->prepare("SELECT id FROM module");
$req->execute();

$allIdModules = $req->fetchAll(PDO::FETCH_ASSOC);

//Mise en place de la simulation pour chaque module
foreach ($allIdModules as $IdModule) {
    $sql = "SELECT * FROM `module` WHERE `id` = :id";
    $req = $db->prepare($sql);
    $req->execute([
        "id" => $IdModule["id"]
    ]);

    $result = $req->fetch(PDO::FETCH_ASSOC);

    $name_module = $result["name"];
    $current_measured_value = $result["current_measured_value"];
    $operating_time = $result["operating_time"];
    $number_of_data_sent = $result["number_of_data_sent"];
    $temperature = $result["temperature"];
    $state = $result["state"];

    $randForMeasure = rand(0,1);
    $randForTemperature = rand(0,1);
    $randForDataSent = rand(5,15);

    $operating_time += 1;

    $number_of_data_sent += $randForDataSent;

    if ($randForMeasure) {
        $current_measured_value += rand(1,3);
    }else{
        $current_measured_value -= rand(1,3);
        if ($current_measured_value <= 0) {
            $current_measured_value += 3;
        }
    }

    if ($randForTemperature) {
        $temperature += 1;
    }else{
        $temperature -= 1;
        if ($temperature <= 20) {
            $temperature += 2;
        }
    }

    if ($temperature > 50) {
        $state = 0;
    }else{
        $state = 1;
    }

    // Mise a jour du module apres une simulation
    $sql2 = "UPDATE `module` SET `current_measured_value`= :current_measured_value ,`operating_time`= :operating_time ,`number_of_data_sent`= :number_of_data_sent ,`temperature`= :temperature ,`state`= :state WHERE `id` = :id";
    $req2 = $db->prepare($sql2);
    $req2->execute([
        "current_measured_value" => $current_measured_value,
        "operating_time" => $operating_time,
        "number_of_data_sent" => $number_of_data_sent,
        "temperature" => $temperature,
        "state" => $state,
        "id" => $IdModule["id"]
    ]);

    // Insertion des données récupérées apres la simulation dans la base de données
    $sql3 = "INSERT INTO `historique`(`id_module`,`name_module`, `measured_value`, `temperature`, `date`) VALUES (:id_module, :name_module,:measured_value,:temperature,CURRENT_TIMESTAMP)";
    $req3 = $db->prepare($sql3);
    $req3->execute([
        "id_module" => $IdModule["id"],
        "name_module" => $name_module,
        "measured_value" => $current_measured_value,
        "temperature" => $temperature
    ]);
}

header('location: ../../index.php');


