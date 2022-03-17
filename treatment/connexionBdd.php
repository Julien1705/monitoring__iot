<?php

$host = "localhost";
$dbname = "monitoring";
$user = "root";
$pwd = "";

// Connection à la base de données
try {
  $db = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $user, $pwd);
} catch (PDOException $e) {
  print "Erreur !: " . $e->getMessage() . "<br/>";
  die();
}