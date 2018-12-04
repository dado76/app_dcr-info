
	<center>
					 <form name="site" method="post">

<style>button{background-color: #2196F3; color: WHITE; border-radius: 5px;	 }
 </style>
	<button type="submit" name="site">   <i class="fa fa-search">                         <br> Recherche</i> </button>             Par codification





<?php
                   $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
                 $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);
                 try{

                 $sql1 = "SELECT DISTINCT codification FROM carte_sims ORDER BY codification";
                 $prepare = $bdd->prepare($sql1);
                 $prepare->execute();
                 //on stocke le résultat de la requête dans un array
                 $arrListe = $prepare->fetchall();
                 } catch (Exception $e){
                 die('Erreur : ' . $e->getMessage());
                 }
                 ?>
                 <?php
                 Error_reporting(0);
                 // pour faire un menu déroulant présenter les différentes rubriques
                 echo "<select name='codification' onChange='FocusObjet()'>";
                 echo "<OPTION SELECTED></OPTION>";

                 foreach($arrListe as $L) {
                    $rbp = $L['codification'];
                    echo "<OPTION VALUE='$rbp'> $rbp </OPTION>\n";
                 }
                 echo "</select>";
                 $codification= $_POST['codification'];
     //////////////////////////////////////////////////////////////////////////o//////////////////////////////////////////////////////// pour faire un menu déroulant présenter les différentes rubriques

     $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
     $bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);

     $servicebalise = "SELECT * FROM carte_sims WHERE codification='$codification'";
     $requetebalise = $bdd->prepare($servicebalise);
     $requetebalise->execute();
     $arraybalise = $requetebalise->fetchALL();
     $nbbalise = count($arraybalise);

     ?>

                 <?php


try
{
$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
$bdd = new PDO('mysql:host=localhost;dbname=dcr_info', 'root', '', $pdo_options);


// On recupere tout le contenu de la table news
$reponse = $bdd->query( "SELECT * FROM carte_sims WHERE codification='$codification'" );

// On affiche le resultat
while ($donnees = $reponse->fetch())
{
?>


<?php

//On affiche les données dans le tableau
?>
<div class="w3-container">
<br>
  <h5> Codification : <?php echo $codification ?></h5>
<table class="w3-table w3-striped w3-white">
    <tr>

      <td>Carte sims</td>
      <td> <?php echo $donnees['sim']; ?></td>
    </tr>
    <tr>
      <td>Balise</td>
      <td> <?php echo $donnees['balise']; ?></td>
    </tr>
    <tr>
      <td>Telephone</td>
      <td> <?php echo $donnees['telephone']; ?></td>
    </tr>
    <tr>
      <td>Immatriculation</td>
      <td> <?php echo $donnees['immatriculation'];?></td>
    </tr>
    <tr>
      <td>Statut</td>
      <td> <?php echo $donnees['statut']; ?></td>
    </tr>
    <tr>
      <td>RFID</td>
      <td> <?php echo $donnees['RFID'];  ?></td>
    </tr>
    <tr>
      <td>Navigation</td>
      <td> <?php echo  $donnees['navigation'];  ?></td>
    </tr>
    <tr>
      <td>LC</td>
      <td> <?php echo $donnees['LC'];  ?></td>
    </tr>


</center>





<?php

}
$reponse->closeCursor();
}
catch(Exception $e)
{
die('Erreur : '.$e->getMessage());
}





?>
</table>
