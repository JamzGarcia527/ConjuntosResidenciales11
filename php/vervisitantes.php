<html>
<head>
	<title>Ver Visitantes</title>
</head>
<body>
<?php
include_once ('../db/utilidades_sql.php');


$result = get_visitantes();

while ($datos=$result->fetch_assoc()) {
	

?>
<div class="vervisitante">
<table border="1">
<thead>
<th rowspan="5">
						<img class="PREVIEW"  src="<?php echo $datos['foto']?>"/>
</th>
<h1> Ver Visitantes</h1>
<colspan>
<th> Apartamento </th><th> bloque </th> <th> interior </th> <th>  nombre visitante </th> <th> Apellido Visitante </th>
<th> cedula </th> <th> celular </th> <th> fecha_ingreso</th> 
	<tr>
	
		<td><?php echo $datos ['nombreapartamento']?> </td>
		<td> <?php echo $datos['bloque']?> </td>
		<td> <?php echo $datos['interior']?> </td>
		<td> <?php echo $datos['nombre']?> </td>
		<td> <?php echo $datos['apellido']?> </td>
		<td> <?php echo $datos['identificacion']?> </td>
		<td> <?php echo $datos['celular']?> </td>
		<td> <?php echo $datos['fecha_ingreso']?> </td>

	
	</tr>

</table>
</thead>
</div>
<?php } 

?>

<?php
	// Permite incluir el script de un archivo, en el archivo donde es llamado
	//include_once, Permite una solo inclusión del archivo
		include_once('footer.inc');
?>
</body>
</html>


