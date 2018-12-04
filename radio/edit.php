<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['edit'])){
		$database = new Connection();
		$db = $database->open();
		try{
			$id = $_GET['id'];
			$Dates = $_POST['Dates'];
			$numero_appel = $_POST['numero_appel'];
			$codification = $_POST['codification'];
			$numero_serie = $_POST['numero_serie'];
			$type = $_POST['type'];
			$statut = $_POST['statut'];
				$modele = $_POST['modele'];

			$sql = "UPDATE radio  SET Dates = '$Dates', numero_appel = '$numero_appel', codification = '$codification', numero_serie = '$numero_serie', type = '$type', statut = '$statut' , modele = '$modele' WHERE id = '$id'";
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
