<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$database = new Connection();
		$db = $database->open();
		try{
			$id = $_GET['id'];
			$Dates = $_POST['Dates'];
			$codification = $_POST['codification'];
			$identification = $_POST['identification'];
			$GPS = $_POST['GPS'];
			$RFID = $_POST['RFID'];
			$comptage = $_POST['comptage'];
			$commentaire = $_POST['commentaire'];

			$sql = "UPDATE suivis  SET Dates = '$Dates', codification = '$codification', identification = '$identification',GPS = '$GPS', RFID = '$RFID', comptage = '$comptage', commentaire = '$commentaire' WHERE id = '$id'";
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
