<?php

require 'config.php';
$username = mysqli_real_escape_string($conectar,$_POST['username']);
$password = mysqli_real_escape_string($conectar,$_POST['password']);




if ($username != '' or $password != '' ) {
	$consulta = mysqli_query($conectar, "SELECT * FROM users WHERE username='$username' and password='$password'" );
	$ver = mysqli_num_rows($consulta);

	if ($ver>0) {
		echo "true";

	}else{
		echo "Usuario o contraseña incorrectos";
	}
	
}else{
	
	echo "Debes de llenar todos los datos";
}



?>
