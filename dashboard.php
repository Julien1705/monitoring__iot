<?php

include "./treatment/requeteSql/nameAndIModule.php";
include "view/header.php";
include "view/nav.php";
?>

<div class="container">
    <div class="card">
        <div class="card-header border-0">
            <div class="d-flex justify-content-between">
                <div class="card-body">
                    <label>Choisir un module</label>
                    <select id="module" class="form-select">
                        <?php while ($result = $req->fetch()) : ?>
                            <option value='<?= $result["id"]; ?>'><?= $result["name"]; ?></option>
                        <?php endwhile; ?>
                    </select>
                </div>
            </div>
        </div>
        <div class="card-body">
            <h1>Graphique de l'évolution de la valeur mesurée</h1>
            <div class="position-relative mb-4">
                <canvas id="module-chart" height="100"></canvas>
            </div>
        </div>
    </div>
</div>

<script>
    //appel de l'affichage de la fonction affichage du graphique selon la valeur par default
    graphique_evolution_valeur_mesuree($('#module').val());

    //detection du changement de la valeur du select et appel de la fonction affichage du graphique selon la valeur 
    $('#module').change(function() {
        $mode = $('#module').val();
        graphique_evolution_valeur_mesuree($mode);
    });

    // fonction affichage du graphique
    function graphique_evolution_valeur_mesuree($mode) {
        $.ajax({
            url: 'treatment/requeteSql/dataGraph.php',
            data: 'mode=' + $mode,
            dataType: 'json',
            async: false,
            success: function(data) {
                var $labels = data.LABELS;
                var $data_values = data.DATA_VALUES;

                var $moduleChart = $('#module-chart')
                // eslint-disable-next-line no-unused-vars
                var moduleChart = new Chart($moduleChart, {
                    data: {
                        labels: $labels,
                        datasets: [{
                            type: 'line',
                            data: $data_values,
                            backgroundColor: 'transparent',
                            borderColor: '#007bff',
                            pointBorderColor: '#007bff',
                            pointBackgroundColor: '#007bff',
                            fill: false
                            // pointHoverBackgroundColor: '#007bff',
                            // pointHoverBorderColor    : '#007bff'
                        }]
                    },
                    options: {
                        responsive: true,
                        legend: {
                            display: false
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    display: false,
                                }
                            }],
                            yAxes: [{
                                gridLines: {
                                    display: false,
                                }
                            }]
                        }
                    }
                })
            }
        });
    }
</script>

<?php

include "view/footer.php";
?>