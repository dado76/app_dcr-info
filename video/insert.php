<?php
include('db.php');
include('function.php');
if(isset($_POST["operation"]))
{
	if($_POST["operation"] == "add")
	{
		$image = '';
		if($_FILES["user_image"]["name"] != '')
		{
			$image = upload_image();
		}
		$statement = $connection->prepare("
			INSERT INTO video (site, equipement, numeroserie, repere,dateinstallation, dureegaranti, ips,mac, image) 
			VALUES (:site, :equipement, :numeroserie, :repere,:dateinstallation, :dureegaranti, :ips,:mac, :image) 
		");
		$result = $statement->execute(
			array(
				':site'	=>	$_POST["site"],
				':equipement'	=>	$_POST["equipement"],
				':numeroserie'	=>	$_POST["numeroserie"],
				':repere'	=>	$_POST["repere"],
				':dateinstallation'	=>	$_POST["dateinstallation"],
				':dureegaranti'	=>	$_POST["dureegaranti"],
				':ips'	=>	$_POST["ips"],
				':mac'	=>	$_POST["mac"],
				':image'		=>	$image
			)
		);
		if(!empty($result))
		{
			echo 'Equipement ajouté';
		}
	}
	if($_POST["operation"] == "modifier")
	{
		$image = '';
		if($_FILES["user_image"]["name"] != '')
		{
			$image = upload_image();
		}
		else
		{
			$image = $_POST["hidden_user_image"];
		}
		$statement = $connection->prepare(
			"UPDATE video 
			SET site = :site, 
			equipement = :equipement, 
			numeroserie = :numeroserie, 
			repere = :repere,
			dateinstallation = :dateinstallation, 
			dureegaranti =:dureegaranti,
			ips =:ips,
			mac =:mac, 
			image =:image
			WHERE id = :id
			"
		);
		$result = $statement->execute(
			array(
				':site'	=>	$_POST["site"],
				':equipement'	=>	$_POST["equipement"],
				':numeroserie'	=>	$_POST["numeroserie"],
				':repere'	=>	$_POST["repere"],
				':dateinstallation'	=>	$_POST["dateinstallation"],
				':dureegaranti'	=>	$_POST["dureegaranti"],
				':ips'	=>	$_POST["ips"],
				':mac'	=>	$_POST["mac"],
				':image'		=>	$image,
				':id'			=>	$_POST["user_id"]
			)
		);
		if(!empty($result))
		{
			echo 'Data Updated';
		}
	}
}

?>