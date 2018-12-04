<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$database = new Connection();
		$db = $database->open();
		try{
			//make use of prepared statement to prevent sql injection
			$stmt = $db->prepare("INSERT INTO suivis (Dates, codification, identification,GPS,RFID,comptage,commentaire) VALUES (:Dates, :codification, :identification,:GPS,:RFID,:comptage,:commentaire)");
			//if-else statement in executing our prepared statement
			$_SESSION['message'] = ( $stmt->execute(array(':Dates' => $_POST['Dates'] ,
			 																							':codification' => $_POST['codification'] ,
																										':identification' => $_POST['identification'] ,
																										':GPS' => $_POST['GPS'],
																									  ':RFID' => $_POST['RFID'],
																										':comptage' => $_POST['comptage'],
																										':commentaire' => $_POST['commentaire'],
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
