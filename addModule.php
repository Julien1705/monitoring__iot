<?php

include "view/header.php";
include "view/nav.php";
?>


<div class="col-sm-4 m-auto mt-3">
    <div class="card mb-3">
        <div class="card-header text-center">Ajout d'un module</div>
        <div class="card-body">
            <form action="treatment/requeteSql/addModule.php" method="POST">
                <div class="form-group mb-3">
                    <label for="exampleInputEmail1">Nom du module</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Description</label>
                    <input type="text" class="form-control" id="description" name="description">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Valeur mesurée actuelle</label>
                    <input type="number" class="form-control" id="current_measured_value" name="current_measured_value">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Durée de fonctionnement</label>
                    <input type="number" class="form-control" id="operating_time" name="operating_time">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Nombre de données envoyées</label>
                    <input type="number" class="form-control" id="number_of_data_sent" name="number_of_data_sent">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Température</label>
                    <input type="number" class="form-control" id="temperature" name="temperature">
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1">Statut</label>
                    <input type="number" min="0" max="1" class="form-control" id="state" name="state">
                </div>
                <div>
                    <button type="submit" class="btn btn-primary btn-block">Ajouter</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php

include "view/footer.php";

?>

