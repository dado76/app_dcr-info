<?php
include('db.php');
include('function.php');
if(isset($_POST["user_id"]))
{
	$output = array();
	$statement = $connection->prepare(
		"SELECT * FROM video 
		WHERE id = '".$_POST["user_id"]."' 
		LIMIT 1"
	);
	$statement->execute();
	$result = $statement->fetchAll();
	foreach($result as $row)
	{
		$output["site"] = $row["site"];
		$output["equipement"] = $row["equipement"];
				$output["site"] = $row["site"];
	
		$output["numeroserie"] = $row["numeroserie"];
				$output["repere"] = $row["repere"];
		$output["dateinstallation"] = $row["dateinstallation"];
				$output["dureegaranti"] = $row["dureegaranti"];
		$output["ips"] = $row["ips"];
						$output["mac"] = $row["mac"];
	
		if($row["image"] != '')
		{
			$output['user_image'] = '<a href="upload/'.$row["image"].'"></a>';
		}
		else
		{
			$output['user_image'] = '<input type="hidden" name="hidden_user_image" value="" />';
		}
	}
	echo json_encode($output);
}
?>