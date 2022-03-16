<?php
require "./treatment/connexionBdd.php";


if (!$_POST) {
    $req = $db->prepare("SELECT `measured_value`, `name_module` FROM `historique` WHERE `id_module`=1");
    $req->execute([]);

    $data = $req->fetchAll(PDO::FETCH_ASSOC);

    $name_module = $data[0]["name_module"];

    $data_value = [];
    $label = [];

    foreach ($data as $value) {
        array_push($data_value, $value["measured_value"]);
        array_push($label, "");
    }
}
