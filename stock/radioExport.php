
<?php
require('../dbconnection.php');
require('../db.php');


?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Radio liste</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>


</head>



 <body>
   <?php
   					$sql="Select * from radio";
   					$res=$db->prepare($sql);
   					$res->execute();
   	    ?><table id="empTable"><?php
   					$str.="<thead><tr>  <th>ID</th>
   															<th>numero d'appel</th>
   															<th>codification</th>
   															<th>numero de série</th>
   															<th>type</th>
   													
   														
   													    <th>Statut</th>
   															<th>modele</th>
   							

   															</tr>
   															</thead>
   															<tbody>";
   						while($row = $res->fetch(PDO::FETCH_ASSOC)){
   							$str.="<tr><td>".$row['id']."</td>";
   							$str.="<td>".$row['numero_appel']."</td>";
   							$str.="<td>".$row['codification']."</td>";
     						$str.="<td>".$row['numero_serie']."</td>";
   							$str.="<td>".$row['type']."</td>";
   							$str.="<td>".$row['statut']."</td>";
   							$str.="<td>".$row['modele']."</td>";

   						}
   						echo $str;
   						echo "</tbody></table></div>";
                   ?>
<meta http-equiv="refresh" content="0;URL=template.php">
</article>
    </main>
<script>
function showUser(str) {
    if (str == "") {
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","getuser.php?q="+str,true);
        xmlhttp.send();
    }
}
</script>

  	<footer></footer></body>


    <script>
    $(document).ready(function () {
        $("#empTable").table2excel({
            filename: "radio_liste.xls"
        });
    });
</script>
