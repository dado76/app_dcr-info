<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Suivis tripratik</title>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">



</head>
<body>
<div class="container">
	<h2>Suivis de la géolocalisation des bom</h2>
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
$type= 'Dates';
	$today= date("Y-m-d");
	$now= date("Y-m-d");
echo  ' Date :';
      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
    try{

    $sql1 = "SELECT DISTINCT Dates FROM suivis ORDER BY Dates";
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
    echo "<select name='Dates' onChange='FocusObjet()'>";
    echo "<OPTION SELECTED VALUE='201%'>TOUS</OPTION>";


    foreach($arrListe as $L) {
       $rbp = $L['Dates'];
       echo "<OPTION VALUE='$rbp'> $rbp </OPTION>\n";
    }
    echo "</select>";
    $today= $_POST['Dates'];


    ?>

    </input>

		<input class="btn btn-primary"  type = "submit" value = "Chercher">
				<a href="#addnew" class="btn btn-primary" data-toggle="modal"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
				<a onclick="javascript:window.print()"><button type="button" id="Ajouter_button" data-toggle="modal" data-target="#userModal" class="btn btn-primary btn"><i class="fa fa-print"></i> Imprimer</button></a>
			<a href="suivisExport.php" target="_parent"><button type="button" href="suivisExport.php" class="btn btn-primary btn"><i class="fa fa-file-excel"></i>Export Excel</button></a>
	</form>

	<?php

if (isset($Adr))
	{
 $sql = "SELECT * FROM suivis WHERE Dates LIKE '$today' ORDER BY '$type' ";
}
else {

 $sql = "SELECT * FROM suivis WHERE Dates LIKE '$today' ORDER BY Dates ";
	};


	?><script src="jquery.min.js"></script>
			<table class="table table-bordered table-striped" id="example" style="margin-top:20px;">
				<thead>
				<th>ID</th>
					<th>Date</th>
					<th>Codification</th>
					<th>identification</th>
					<th>GPS</th>
					<th>RFID</th>
					<th>Comptage</th>
					<th>commentaire</th>
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
						    		<td><?php echo $row['Dates']; ?></td>
						    		<td><?php echo $row['codification']; ?></td>
						    		<td><?php echo $row['identification']; ?></td>
									<td><?php echo $row['GPS']; ?></td>
						    		<td><?php echo $row['RFID']; ?></td>
						    		<td><?php echo $row['comptage']; ?></td>
																    		<td><?php echo $row['commentaire']; ?></td>
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
