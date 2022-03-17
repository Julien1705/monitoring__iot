<?php

require "../connexionBdd.php";

?>

<?php

// Vérification que tous les éléments du formulaire sont présents
if (!empty($_POST["name"]) && !empty($_POST["description"]) && !empty($_POST["current_measured_value"]) && !empty($_POST["operating_time"]) && !empty($_POST["number_of_data_sent"]) && !empty($_POST["temperature"]) && !empty($_POST["state"])) {

    // Stockage des éléments du module
    $name = $_POST["name"];
    $description = $_POST["description"];
    $current_measured_value = $_POST["current_measured_value"];
    $operating_time = $_POST["operating_time"];
    $number_of_data_sent = $_POST["number_of_data_sent"];
    $temperature = $_POST["temperature"];
    $state = $_POST["state"];
    

    // Insertion des éléments dans la base de données
    $sql = "INSERT INTO `module`(`name`, `description`, `current_measured_value`, `operating_time`, `number_of_data_sent`, `temperature`, `state`) VALUES (:name,:description,:current_measured_value,:operating_time,:number_of_data_sent,:temperature,:state)";
    $req = $db->prepare($sql);
    $req->execute([
        "name" => $name,
        "description" => $description,
        "current_measured_value" => $current_measured_value,
        "operating_time" => $operating_time,
        "number_of_data_sent" => $number_of_data_sent,
        "temperature" => $temperature,
        "state" => $state
    ]);

    header('location: ../../index.php');
}