<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$database = new Connection();
		$db = $database->open();
		try{
			$id = $_GET['id'];
			$codification = $_POST['codification'];
			$sim = $_POST['sim'];
			$balise = $_POST['balise'];
			$telephone = $_POST['telephone'];
			$idport = $_POST['idport'];
			$immatriculation = $_POST['immatriculation'];
			$statut = $_POST['statut'];
			$rfid = $_POST['rfid'];
			$navigation = $_POST['navigation'];
			$origin = $_POST['origin'];

			$sql = "UPDATE carte_sims  SET codification = '$codification', sim = '$sim', balise = '$balise', telephone = '$telephone', idport = '$idport', immatriculation = '$immatriculation', statut = '$statut', rfid = '$rfid' , navigation = '$navigation', origin = '$origin'WHERE id = '$id'";
			//if-else statement in executing our query
			$_SESSION['message'] = ( $db->exec($sql) ) ? 'Modifications effectués' : 'Erreur quelque chose ne va pas';

		}
		catch(PDOException $e){
			$_SESSION['message'] = $e->getMessage();
		}

		//close connection
		$database->close();
	}
	else{
		$_SESSION['message'] = 'Fill up edit form first';
	}

	header('location: template.php');

?>
