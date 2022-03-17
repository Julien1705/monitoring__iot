<?php
require "../connexionBdd.php";


$mode = $_GET['mode'];

$select = [];

$req = $db->prepare("SELECT `measured_value`, `name_module` FROM `historique` WHERE `id_module`=:id");
$req->execute([
    "id" => $mode
]);

$data = $req->fetchAll(PDO::FETCH_ASSOC);


$data_value = [];
$label = [];

foreach ($data as $value) {
    array_push($data_value, $value["measured_value"]);
    array_push($label, "");
}

$select["DATA_VALUES"] = $data_value;
$select["LABELS"] = $label;

echo json_encode($select);
exit(0);

