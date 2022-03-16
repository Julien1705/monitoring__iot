<?php

require "./treatment/connexionBdd.php";

?>

<?php

$sql = "SELECT `id`, `name` FROM `module`";
$req = $db->prepare($sql);
$req->execute();