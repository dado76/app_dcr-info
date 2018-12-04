<?php
	session_start();
	include_once('connection.php');

	if(isset($_POST['add'])){
		$database = new Connection();
		$db = $database->open();
		try{
			//make use of prepared statement to prevent sql injection
			$stmt = $db->prepare("INSERT INTO anomalie_tripratik (Dates, Commune, Adresse,OM,CS,BIO,OM_WEB,CS_WEB,BIO_WEB) VALUES (:Dates, :Commune, :Adresse,:OM,:CS,:BIO,:OM_WEB,:CS_WEB,:BIO_WEB)");
			//if-else statement in executing our prepared statement
			$_SESSION['message'] = ( $stmt->execute(array(':Dates' => $_POST['Dates'] , ':Commune' => $_POST['Commune'] , ':Adresse' => $_POST['Adresse'] , ':OM' => $_POST['OM'], ':CS' => $_POST['CS'], ':BIO' => $_POST['BIO'] , ':OM_WEB' => $_POST['OM_WEB'], ':CS_WEB' => $_POST['CS_WEB'], ':BIO_WEB' => $_POST['BIO_WEB'])) ) ? 'Ajouter avec succès' : 'Something went wrong. Cannot add member';

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
