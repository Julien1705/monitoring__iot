<?php

include "./treatment/requeteSql/allmodules.php";
include "view/header.php";
include "view/nav.php";
?>




<div class="container">
    <h1 class="text-center">Modules IOT</h1>
    <div class="row mt-3">
        <?php while ($result = $req->fetch()) : ?>
            <?php if ($result["state"]) : ?>
                <div class="col-sm-6">
                    <div class="card border-success mb-3">
                        <div class="card-header text-center"><?= $result["name"]; ?></div>
                        <div class="card-body">
                            <p>Statut : En marche</p>
                            <p>Description : <?= $result["description"]; ?></p>
                            <p>Valeur mesurée actuelle : <?= $result["current_measured_value"]; ?></p>
                            <p>Durée de fonctionnement : <?= $result["operating_time"]; ?></p>
                            <p>Nombre de données envoyées : <?= $result["number_of_data_sent"]; ?></p>
                            <p>Température : <?= $result["temperature"]; ?></p>
                        </div>
                    </div>
                </div>
            <?php else : ?>
                <div class="col-sm-6">
                    <div class="card border-danger mb-3">
                        <div class="card-header text-center"><?= $result["name"]; ?></div>
                        <div class="card-body">
                            <p>Statut : A l'arret</p>
                            <p>Description : <?= $result["description"]; ?></p>
                            <p>Valeur mesurée actuelle : <?= $result["current_measured_value"]; ?></p>
                            <p>Durée de fonctionnement : <?= $result["operating_time"]; ?></p>
                            <p>Nombre de données envoyées : <?= $result["number_of_data_sent"]; ?></p>
                            <p>Température : <?= $result["temperature"]; ?></p>
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

    <a href="treatment/requeteSql/simulation.php" class="btn btn-warning">Simulation</a>
</div>

<script>
    const simulationBtn = document.querySelector("a[href='treatment/requeteSql/simulation.php']");
    const stopBtn = document.createElement("button");

    const SIMULATION = () => {
        $.get("treatment/requeteSql/simulation.php");
    };

    simulationBtn.addEventListener("click", (e) => {
        e.preventDefault();
        simulationBtn.innerHTML = "Simulation en cours...";

        const simu = setInterval(SIMULATION, 2000);

        stopBtn.setAttribute("onclick", `stopSimulation(${simu})`);
        stopBtn.classList.add("btn", "btn-danger", "m-3");
        stopBtn.innerHTML = "Stop";
        $(stopBtn).insertAfter(simulationBtn);
    });

    function stopSimulation(simu) {
        clearInterval(simu);
        simulationBtn.innerHTML = "Lancer La Simulation";
    }
</script>


<?php

include "view/footer.php";
?>