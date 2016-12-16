

<?php
include_once ('../db/utilidades_sql.php');
include_once ('../php/utilidades.php');



?>
<?php

if($_FILES){
	$directorio_fotosvisitantes='img/fotosvisitantes/';


	$ruta1=$directorio_fotosvisitantes.basename ($_FILES['foto']['name']);
	move_uploaded_file($_FILES['foto']['tmp_name'], $ruta1);

if ($_POST) { 

	$_id_apartamento=isset($_POST['apartamento'] ) ? 
	$_POST ['apartamento']:'';

	$nombre=isset($_POST['nombre'] ) ? 
	$_POST ['nombre']:'';

	$apellido=isset($_POST['apellido'] ) ? 
	$_POST ['apellido']:'';

	$identificacion=isset($_POST['identificacion'] ) ? 
	$_POST ['identificacion']:'';

	$celular=isset($_POST['celular'] ) ? 
	$_POST ['celular']:'';

	$email=isset($_POST['email'] ) ? 
	$_POST ['email']:'';

	$fecha_ingreso=isset($_POST['fecha_ingreso'] ) ? 
	$_POST ['fecha_ingreso']:'';

	$foto=$ruta1;


	$result = set_formulario_vis ($_id_apartamento,$nombre,$apellido,$identificacion,$celular,$email,$fecha_ingreso,$foto);

	ob_start();

	header("refresh:3;url=../formulario_vis.php");




	
}
}


?>

