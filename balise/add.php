<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$database = new Connection();
		$db = $database->open();
		try{
			//make use of prepared statement to prevent sql injection
			$stmt = $db->prepare("INSERT INTO carte_sims (codification, sim,balise,telephone,idport,immatriculation,statut,rfid,navigation,origin) VALUES (:codification, :sim, :balise,:telephone,:idport,:immatriculation,:statut,:rfid,:navigation,:origin)");
			//if-else statement in executing our prepared statement
			$_SESSION['message'] = ( $stmt->execute(array(':codification' => $_POST['codification'] ,
			 																							
																										':sim' => $_POST['sim'] ,
																										':balise' => $_POST['balise'],
																									  ':telephone' => $_POST['telephone'],
																										':idport' => $_POST['idport'],
																										':immatriculation' => $_POST['immatriculation'],
																												  ':statut' => $_POST['statut'],
																										':rfid' => $_POST['rfid'],
																										':navigation' => $_POST['navigation'],
																										':origin' => $_POST['origin'],
																									)) ) ? 'Ajouter avec succès' : 'Something went wrong. Cannot add member';

		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//close connection
		$database->close();
	}

	else{
		$_SESSION['message'] = 'Fill up add form first';
	}

	header('location: template.php');

?>
