<?php

include "./treatment/requeteSql/allmodules.php";
include "view/header.php";
include "view/nav.php";
?>

<div class="container">
    <h1 class="text-center">Modules IOT</h1>
    <a href="treatment/requeteSql/simulation.php" class="btn btn-warning" id="btn_simulation">Simulation</a>
    <div id="donnee">
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
    </div>

</div>

<script>
    const simulationBtn = document.querySelector("a[href='treatment/requeteSql/simulation.php']");
    const stopBtn = document.createElement("button");

    

                                    
    const SIMULATION = () => {
        $.get("treatment/requeteSql/simulation.php");
    };

    //Appel de la simulation au click du bouton
    simulationBtn.addEventListener("click", (e) => {
        e.preventDefault();

        $("#btn_simulation").hide();
        $("#btn_arret").show();

        // appel de la fonction simulation toutes les secondes
        const simu = setInterval(SIMULATION, 1000);

        // appel du rafraichissment des données toutes les secondes
        const auto_refresh = setInterval(
            function() {
                $('#donnee').load('view/cardModule.php').fadeIn('slow');
            }, 1000);

        // Creation du bouton STOP
        stopBtn.setAttribute("onclick", `stopSimulation(${simu})`);
        stopBtn.setAttribute("id", "btn_arret");
        stopBtn.classList.add("btn", "btn-danger");
        stopBtn.innerHTML = "Stop simulation";
        $(stopBtn).insertAfter(simulationBtn);

    });

    // fonction d'arret de simulation
    function stopSimulation(simu) {
        $("#btn_simulation").show();
        $("#btn_arret").hide();
        clearInterval(simu);
        clearInterval(auto_refresh);
    }
</script>


<?php

include "view/footer.php";
?>