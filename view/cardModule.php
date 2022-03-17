<?php
require "../treatment/connexionBdd.php";

$sql = "SELECT * FROM module";
$req = $db->prepare($sql);
$req->execute();

?>

<div class="row mt-3">
    <?php while ($result = $req->fetch()) : ?>
        <?php if ($result["state"]) : ?>
            <div class="col-sm-4">
                <div class="card border-success mb-3">
                    <div class="card-header text-center"><?= $result["name"]; ?></div>
                    <div class="card-body">
                        <p>Statut : En marche</p>
                        <p>Description : <?= $result["description"]; ?></p>
                        <p>Valeur mesurée actuelle : <?= $result["current_measured_value"]; ?></p>
                        <p>Durée de fonctionnement : <?= $result["operating_time"]; ?></p>
                        <p>Nombre de données envoyées : <?= $result["number_of_data_sent"]; ?></p>
                        <p>Température : <?= $result["temperature"]; ?>°C</p>
                    </div>
                </div>
            </div>
        <?php else : ?>
            <div class="col-sm-4">
                <div class="card border-danger mb-3">
                    <div class="card-header text-center"><?= $result["name"]; ?></div>
                    <div class="card-body">
                        <p>Statut : A l'arret</p>
                        <p>Description : <?= $result["description"]; ?></p>
                        <p>Valeur mesurée actuelle : <?= $result["current_measured_value"]; ?></p>
                        <p>Durée de fonctionnement : <?= $result["operating_time"]; ?></p>
                        <p>Nombre de données envoyées : <?= $result["number_of_data_sent"]; ?></p>
                        <p>Température : <?= $result["temperature"]; ?>°C</p>
                        <?php if ($result["temperature"] > 50) : ?>
                            <div class="alert alert-danger" role="alert">
                                <h4>Attention !</h4>
                                <p><?= $result["name"]; ?> a atteint la température de <?= $result["temperature"]; ?>°C</p>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    <?php endwhile; ?>
</div>