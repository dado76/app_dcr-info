<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Suivis des balise de géolocalisation</title>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">



</head>
<body>
<style>
table { weight: 80%;
	
	
};

</style>
<div class="container">
	<h2>Suivis des balises de géolocalisation</h2>
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">


            <?php

                session_start();
                if(isset($_SESSION['message'])){
                    ?>
                    <div class="alert alert-info text-center" style="margin-top:20px;">
                        <?php echo $_SESSION['message']; ?>
                    </div>
                    <?php

                    unset($_SESSION['message']);
                }
            ?>
	<form action ="" method="post">
	<?php
$type= 'codification';
	$today= '%';
	$now= date("Y-m-d");
echo  ' Date :';
      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
    try{

    $sql1 = "SELECT DISTINCT codification FROM carte_sims ORDER BY codification";
    $prepare = $bdd->prepare($sql1);
    $prepare->execute();
    //on stocke le résultat de la requête dans un array
    $arrListe = $prepare->fetchall();
    } catch (Exception $e){
    die('Erreur : ' . $e->getMessage());
    }
    ?>
    <?php
    Error_reporting(0);
    // pour faire un menu déroulant présenter les différentes rubriques
    echo "<select name='codification' onChange='FocusObjet()'>";
    echo "<OPTION SELECTED VALUE='%'>TOUS</OPTION>";


    foreach($arrListe as $L) {
       $rbp = $L['codification'];
       echo "<OPTION VALUE='$rbp'> $rbp </OPTION>\n";
    }
    echo "</select>";
    $today= $_POST['codification'];


    ?>

    </input>

		<input class="btn btn-primary"  type = "submit" value = "Chercher">
				<a href="#addnew" class="btn btn-primary" data-toggle="modal"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
				<a onclick="javascript:window.print()"><button type="button" id="Ajouter_button" data-toggle="modal" data-target="#userModal" class="btn btn-primary btn"><i class="fa fa-print"></i> Imprimer</button></a>
			<a href="baliseExport.php" target="_parent"><button type="button" href="baliseExport.php" class="btn btn-primary btn"><i class="fa fa-file-excel"></i>Export Excel</button></a>
	</form>

	<?php

if (isset($Adr))
	{
 $sql = "SELECT * FROM carte_sims WHERE codification LIKE '$today' ORDER BY '$type' ";
}
else {

 $sql = "SELECT * FROM carte_sims WHERE codification LIKE '$today' ORDER BY codification ";
	};


	?><script src="jquery.min.js"></script>
			<table class="table table-bordered table-striped" id="example" style="margin-top:20px;">
				<thead>
				<th>ID</th>
			
					<th>Codification</th>
					<th>Carte sims</th>
					<th>balise</th>
					<th>telephone</th>
					<th>idport</th>
					<th>immatriculation</th>
					<th>statut</th>
					<th>rfid</th>
					<th>navigation</th>
					<th>origin</th>
					<th>Action</th>
				</thead>
				<tbody>
					<?php
						//include our connection
						include_once('connection.php');

						$database = new Connection();
    					$db = $database->open();
						try{

						    foreach ($db->query($sql) as $row) {
						    	?>
						    	<tr>
						    		<td><?php echo $row['id']; ?></td>
						    		<td><?php echo $row['codification']; ?></td>
						    		<td><?php echo $row['sim']; ?></td>
						    		<td><?php echo $row['balise']; ?></td>
									<td><?php echo $row['telephone']; ?></td>
						    		<td><?php echo $row['idport']; ?></td>
						    		<td><?php echo $row['immatriculation']; ?></td>
																    		
																					    	
									<td><?php echo $row['statut']; ?></td>
						    		<td><?php echo $row['rfid']; ?></td>
						    		<td><?php echo $row['navigation']; ?></td>
																    		<td><?php echo $row['origin']; ?></td>
						    		<td>
											<a href="#edit_<?php echo $row['id']; ?>" class="btn btn-success btn-sl" data-toggle="modal"><i class="fa fa-edit fa-fw"></i><span class="glyphicon glyphicon-edit"></span></a>
						    			<a href="#delete_<?php echo $row['id']; ?>" class="btn btn-danger btn-sl" data-toggle="modal"><i class="fa fa-close fa-fw"></i><span class="glyphicon glyphicon-trash"></span></a>
						    		</td>
						    		<?php include('edit_delete_modal.php'); ?>
						    	</tr>
						    	<?php
						    }
						}
						catch(PDOException $e){
							echo "Probléme de connection: " . $e->getMessage();
						}

						//close connection
						$database->close();

					?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<?php include('add_modal.php'); ?>
<script src="jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
