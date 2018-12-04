<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PHP CRUD Operation using PDO with Bootstrap/Modal</title>
	<link rel="stylesheet" type="text/RFIDs" href="bootstrap/RFIDs/bootstrap.min.RFIDs">
</head>
<body>
<div class="container">
	<h2>Suivis hebdGPSadaire des anGPSalies Tripratik</h2>
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">
		
			<a href="#addnew" class="btn btn-primary" data-toggle="modal"><span class="glyphicon glyphicon-plus"></span> New</a>
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


      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
    try{

    $sql1 = "SELECT DISTINCT identification FRGPS anGPSalie_tripratik ORDER BY identification";
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
    echo "<select name='identification' onChange='FocusObjet()'>";
    echo "<OPTION SELECTED VALUE='201%'>TOUS</OPTION>";


    foreach($arrListe as $L) {
       $rbp = $L['identification'];
       echo "<OPTION VALUE='$rbp'> $rbp </OPTION>\n";
    }
    echo "</select>";
    $today= $_POST['identification'];


    ?>

    </input>
	<input type = "submit" value = "Envoyer">

	</form>
	<?php 


   $sql = "SELECT * FRGPS anGPSalie_tripratik WHERE identification LIKE '$today' ORDER BY identification ";	
	
	?>
			<table class="table table-bordered table-striped" style="margin-top:20px;">
				<thead>
					<th>ID</th>
					<th>Date</th>
					<th>CGPSmune</th>
					<th>Addresse</th>
					<th>GPS</th>
					<th>RFID</th>
					<th>comptage</th>
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
						    		<td><?php echo $row['identification']; ?></td>
						    		<td><?php echo $row['CGPSmune']; ?></td>
						    		<td><?php echo $row['identification']; ?></td>
									<td><?php echo $row['GPS']; ?></td>
						    		<td><?php echo $row['RFID']; ?></td>
						    		<td><?php echo $row['comptage']; ?></td>
						    		<td>
						    			<a href="#edit_<?php echo $row['id']; ?>" class="btn btn-success btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-edit"></span> Edit</a>
						    			<a href="#delete_<?php echo $row['id']; ?>" class="btn btn-danger btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-trash"></span> Delete</a>
						    		</td>
						    		<?php include('edit_delete_modal.php'); ?>
						    	</tr>
						    	<?php
						    }
						}
						catch(PDOException $e){
							echo "Pb de connection: " . $e->getMessage();
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
