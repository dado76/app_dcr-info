<?php
include('db.php');
include('function.php');
$query = '';
$output = array();
$query .= "SELECT * FROM video ";
if(isset($_POST["search"]["value"]))
{
	$query .= 'WHERE site LIKE "%'.$_POST["search"]["value"].'%" ';
	$query .= 'OR equipement LIKE "%'.$_POST["search"]["value"].'%" ';
}
if(isset($_POST["order"]))
{
	$query .= 'ORDER BY '.$_POST['order']['0']['column'].' '.$_POST['order']['0']['dir'].' ';
}
else
{
	$query .= 'ORDER BY id DESC ';
}
if($_POST["length"] != -1)
{
	$query .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}
$statement = $connection->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
$data = array();
$filtered_rows = $statement->rowCount();
foreach($result as $row)
{
	$image = '';
	if($row["image"] != '')
	{
		$image = '<a href="upload/'.$row["image"].'"><img src="test.jpg" class="img-thumbnail" width="50" height="35" /><input type="hidden" name="hidden_user_image" value="'.$row["image"].'" /></a>';
	}
	else
	{
		$image = '';
	}
	$sub_array = array();
	$sub_array[] = $image;
	$sub_array[] = $row["site"];
	$sub_array[] = $row["equipement"];
	$sub_array[] = $row["numeroserie"];
	$sub_array[] = $row["repere"];
	$sub_array[] = $row["dateinstallation"];
	$sub_array[] = $row["dureegaranti"];
	$sub_array[] = $row["ips"];
	$sub_array[] = $row["mac"];
	$sub_array[] = '<button type="button" name="modifier" id="'.$row["id"].'" class="btn btn-success btn-sl modifier"><i class="fa fa-edit"></button>';
	$sub_array[] = '<button type="button" name="delete" id="'.$row["id"].'" class="btn btn-danger btn-sl delete"><i class="fa fa-trash"></button>';
	$data[] = $sub_array;
}


$output = array(
	"draw"				=>	intval($_POST["draw"]),
	"recordsTotal"		=> 	$filtered_rows,
	"recordsFiltered"	=>	get_total_all_records(),
	"data"				=>	$data
);
echo json_encode($output);
?>