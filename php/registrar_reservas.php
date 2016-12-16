<?php

include_once ('../db/utilidades_sql.php');

if ($_POST) { 


	$concepto=isset($_POST['concepto'] ) ? 
	$_POST ['concepto']:'';


	$fecha_reserva=isset($_POST['fecha_reserva'] ) ? 
	$_POST ['fecha_reserva']:'';


	$_id_formulario_pro=isset($_POST['_id_formulario_pro'] ) ? 
	$_POST ['_id_formulario_pro']:'';


	$result = set_reserva($concepto,$fecha_reserva,$_id_formulario_pro);

	ob_start();

	header("refresh:3;url=../formulario_reserva.php");



}

?>