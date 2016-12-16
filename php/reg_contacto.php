
<?php

include_once ('../db/utilidades_sql.php');

if ($_POST) { 


	$nombre=isset($_POST['nombre'] ) ? 
	$_POST ['nombre']:'';

	$email=isset($_POST['email'] ) ? 
	$_POST ['email']:'';

	$asunto=isset($_POST['asunto'] ) ? 
	$_POST ['asunto']:'';

	$mensaje=isset($_POST['mensaje'] ) ? 
	$_POST ['mensaje']:'';

	
	

	$result = set_contacto($nombre,$email,$asunto,$mensaje);

	ob_start();

	header("refresh:3;url=../formulario_contacto.php");




	

}

?>