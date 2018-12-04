<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$database = new Connection();
		$db = $database->open();
		try{
			//make use of prepared statement to prevent sql injection
			$stmt = $db->prepare("INSERT INTO radio (Dates, numero_appel, codification,numero_serie,type,statut,modele) VALUES (:Dates, :numero_appel, :codification,:numero_serie,:type,:statut,:modele)");
			//if-else statement in executing our prepared statement
			$_SESSION['message'] = ( $stmt->execute(array(':Dates' => $_POST['Dates'] ,
			 																							':numero_appel' => $_POST['numero_appel'] ,
																										':codification' => $_POST['codification'] ,
																										':numero_serie' => $_POST['numero_serie'],
																									  ':type' => $_POST['type'],
																										':statut' => $_POST['statut'],
																										':modele' => $_POST['modele'],
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
