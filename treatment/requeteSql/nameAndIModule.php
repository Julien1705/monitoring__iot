<?php

require "./treatment/connexionBdd.php";

?>

<?php

// Récupération de l'ID et du nom de chaque module
$sql = "SELECT `id`, `name` FROM `module`";
$req = $db->prepare($sql);
$req->execute();