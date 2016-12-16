
<?php

include_once ('../db/utilidades_sql.php');

if ($_POST) { 


	$nombre=isset($_POST['nombre'] ) ? 
	$_POST ['nombre']:'';

	$apellido=isset($_POST['apellido'] ) ? 
	$_POST ['apellido']:'';

	$identificacion=isset($_POST['identificacion'] ) ? 
	$_POST ['identificacion']:'';


	$email=isset($_POST['email'] ) ? 
	$_POST ['email']:'';

	$funcion=isset($_POST['funcion'] ) ? 
	$_POST ['funcion']:'';


	$result = set_empleados($nombre,$apellido,$identificacion,$email,$funcion);

	ob_start();

	header("refresh:3;url=../formulario_empleados.php");




	

}

?>