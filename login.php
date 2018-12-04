<html>
<head>
<meta charset="UTF-8">
<title>Formulaire de connexion</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
<link href='https://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
</head>

<body>
<div id="main" class="container">
  <center>

	<form name="login" id="loginform" action="" method="post" class="wpl-track-me">  <img src="https://3d.codah.fr/img/logos/logo_codah_big.jpg" width="80" height="120">
    <?php
     	require('db.php');
     	session_start();
         // If form submitted, insert values into the database.
         if (isset($_POST['username'])){
     		$username = stripslashes($_REQUEST['username']); // removes backslashes
     		$username = mysqli_real_escape_string($con,$username); //escapes special characters in a string
     		$password = stripslashes($_REQUEST['password']);
     		$password = mysqli_real_escape_string($con,$password);
     	//Checking is user existing in the database or not
             $query = "SELECT * FROM `users` WHERE username='$username' and password='".md5($password)."'";
     		$result = mysqli_query($con,$query) or die(mysqli_error());
     		$rows = mysqli_num_rows($result);
             if($rows==1){
     			$_SESSION['username'] = $username;
     			header("Location: ./template.php"); // Redirect user to index.php
                 }else{
     				echo "<div class='form'><br><br><br><h3>Nom d'utilisateur/ mot de passe incorrect.</h3><br/>Clicker ici pour vous <a href='login.php'>Connecter</a></div>";
     				}
         }else{
     ?>

<br>
<br>
<p>
Direction Collecte et Recyclage</p>
  <br>
    <br>
      <br>
      <br>
        <br>
          <br>
		<p class="login-username">
		<label for="user_login">Nom d'utilisateur</label>
			<input type="text" name="username" id="user_login" class="input" placeholder="Nom d'utilisateur" value="" size="20" />
		</p>

		<p class="login-password">
		<label for="user_pass">Mot de passe</label><input type="password" name="password" id="user_pass" class="input" placeholder="Mot de passe" value="" size="20" />
		</p>
      <br>
        <br>
          <br>
		<p class="login-remember"><label><input name="rememberme" type="checkbox" id="rememberme" value="forever"> Remember Me</label></p>
  <br>
  	<p class="login-submit"><input type="submit" name="wp-submit" id="wp-submit" class="button-primary" value="Connexion" />
		<input type="hidden" name="redirection_vers" value="#"/>


		</p>
	</form>
</div>
</body>
</html>
<?php }

?>
<p>Pas encore de compte ? <a href='registration.php'>Enresgistrement ICI</a></p>
