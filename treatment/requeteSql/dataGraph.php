<?php
require "../connexionBdd.php";

// Récupération de l'ID du module demandé
$mode = $_GET['mode'];

$select = [];

// Récupération des valeurs mesurées durant les simulations selon l'ID 
$req = $db->prepare("SELECT `measured_value` FROM `historique` WHERE `id_module`=:id");
$req->execute([
    "id" => $mode
]);

$data = $req->fetchAll(PDO::FETCH_ASSOC);


$data_value = [];
$label = [];

// Regroupement des valeurs mesurées dans un tableau
foreach ($data as $value) {
    array_push($data_value, $value["measured_value"]);
    array_push($label, "");
}

$select["DATA_VALUES"] = $data_value;
$select["LABELS"] = $label;

echo json_encode($select);
exit(0);

