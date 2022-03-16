<?php

include "./treatment/requeteSql/nameAndIModule.php";
include "view/header.php";
include "view/nav.php";
?>

<div class="container">
    <form action="treatment/requeteSql/dataGraph.php" method="post">
        <div class="form-group">
            <label for="module" class="form-label mt-4">Choisir un module</label>
            <select class="form-select" id="module" name="module">
            <?php while ($result = $req->fetch()) : ?>
                <option value='<?= $result["id"]; ?>'><?= $result["name"]; ?></option>
            <?php endwhile; ?>
            </select>
        </div>
        <div>
            <button type="submit" class="btn btn-primary btn-block">Valider</button>
        </div>
    </form>

    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Graphique selon la valeur mesurée</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>
        <div class="card-body">
            <div class="chart">
                <canvas id="areaChart"
                    style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<?php
include "./treatment/requeteSql/dataGraph.php";
?>
<script>
<?php echo "var label = '".implode("<>", $label)."'.split('<>');"; ?>
<?php echo "var data = '".implode("<>", $data_value)."'.split('<>');"; ?>

var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

var areaChartData = {
    labels: label,
    datasets: [{
        label: 'Digital Goods',
        backgroundColor: 'rgba(60,141,188,0.9)',
        borderColor: 'rgba(60,141,188,0.8)',
        pointRadius: false,
        pointColor: '#3b8bba',
        pointStrokeColor: 'rgba(60,141,188,1)',
        pointHighlightFill: '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data: data
    }]
}

var areaChartOptions = {
    maintainAspectRatio: false,
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

new Chart(areaChartCanvas, {
    type: 'line',
    data: areaChartData,
    options: areaChartOptions
})
</script>

<?php

include "view/footer.php";
?>