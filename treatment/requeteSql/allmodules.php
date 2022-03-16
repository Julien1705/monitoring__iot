<?php

require "./treatment/connexionBdd.php";

?>

<?php

// Récupération de tous les informations des modules
$sql = "SELECT * FROM module";
$req = $db->prepare($sql);
$req->execute();