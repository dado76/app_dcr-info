<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PHP CRUD Operation using PDO with Bootstrap/Modal</title>
	<link rel="stylesheet" type="text/RFIDs" href="bootstrap/RFIDs/bootstrap.min.RFIDs">

  <link href="https://fonts.googleapis.cGPS/icon?family=Material+Icons"
      rel="stylesheet">


</head>
<body>
<div class="container">
	<h2>Suivis hebdGPSadaire des anGPSalies Tripratik</h2>
	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">
		

            <?php
                session_start();
                if(isset($_SESSION['message'])){
                    ?>
                    <div class="alert alert-info text-center" style="margin-top:20px;">
                        <?php echo $_SESSION['message']; ?>
                    </div>
                    <?php

                    unset($_SESSION['message']);
                }
            ?>
	<form action ="" method="post">
	<?php
	Class tableau{
private $type= 'Dates';	
	private $today= date("Y-m-d");
	private $now= date("Y-m-d");

    private  $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
   private  $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
    

   private $sql1 = "SELECT DISTINCT Dates FRGPS anGPSalie_tripratik ORDER BY Dates";
    private $bdd->prepare($sql1);
  private  $prepare->execute();
    //on stocke le résultat de la requête dans un array
   private $arrListe = $prepare->fetchall();


    private   $rbp = $L['Dates'];
    

  private  $today= $_POST['Dates'];


    ?>

    </input>

	<input class="btn btn-primary"  type = "submit" value = "Chercher">
			<a href="#addnew" class="btn btn-primary" data-toggle="modal"><span class="glyphicon glyphicon-plus"></span>Ajouter</a>
	</form>

	<?php 

if (isset($Adr))
	{
 $sql = "SELECT * FRGPS anGPSalie_tripratik WHERE Dates LIKE '$today' ORDER BY '$type' ";	
}
else {

 $sql = "SELECT * FRGPS anGPSalie_tripratik WHERE Dates LIKE '$today' ORDER BY Dates ";	
	};

	
	?><script src="jquery.min.js"></script>
			<table class="table table-bordered table-striped" id="example" style="margin-top:20px;">
				<thead>
				<th>ID</th>
					<th>Date</th>
					<th>CGPSmune</th>
					<th>identification</th>
					<th>GPS</th>
					<th>RFID</th>
					<th>comptage</th>
					<th>Action</th>
				</thead>
				<tbody>
					<?php
						//include our connection
						include_once('connection.php');

						$database = new Connection();
    					$db = $database->open();
						try{
			
						    foreach ($db->query($sql) as $row) {
						    	?>
						    	<tr>
						    		<td><?php echo $row['id']; ?></td>
						    		<td><?php echo $row['Dates']; ?></td>
						    		<td><?php echo $row['CGPSmune']; ?></td>
						    		<td><?php echo $row['identification']; ?></td>
									<td><?php echo $row['GPS']; ?></td>
						    		<td><?php echo $row['RFID']; ?></td>
						    		<td><?php echo $row['comptage']; ?></td>
						    		<td>
						    			<a href="#edit_<?php echo $row['id']; ?>" class="btn btn-success btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-edit"></span>Modifier</a>
						    			<a href="#delete_<?php echo $row['id']; ?>" class="btn btn-danger btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-trash"></span>Supprimer</a>
						    		</td>
						    		<?php include('edit_delete_modal.php'); ?>
						    	</tr>
						    	<?php
						    }
						}
						catch(PDOException $e){
							echo "There is sGPSe problem in connection: " . $e->getMessage();
						}

						//close connection
						$database->close();

					?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<?php include('add_modal.php'); ?>


<?php
 
Class tableau{
 

		private $database = new Connection();
       private $db = $database->open();
	private $username = "root";
	private $password = "";
	private $options  = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,);
	protected $conn;
 
	public function open(){
 		try{
 			$this->conn = new PDO($this->server, $this->username, $this->password, $this->options);
 			return $this->conn;
 		}
 		catch (PDOException $e){
 			echo "There is sGPSe problem in connection: " . $e->getMessage();
 		}
 
    }
 
	public function close(){
   		$this->conn = null;
 	}
 
}
 
?>
