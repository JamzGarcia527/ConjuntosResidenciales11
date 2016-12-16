
<?php
	// Permite incluir el script de un archivo, en el archivo donde es llamado
	//include_once, Permite una solo inclusión del archivo
	Include_once('header.php');
	Include_once('php/menu.php');
?>


<div id="cssbloque">
					<form action="php/reg_contacto.php" method="post">
					<table align="center">
						<tr class="formulario_bloque">
						<h1 class="titulo">Contatenos</h1>


							<td>nombre</td>
							<td><input type="text" name="nombre" required="" placeholder="ingrese su nombre" ></td>
							
							
						</tr>


						

						<tr class="formulario_bloque2">
							<td>E-Mail</td>
							<td><input type="text"  name="email" required="" placeholder="EJ: user@dominio.com"></td>

						</tr>
						<tr class="formulario_bloque2">
							<td>Asunto</td>
							<td><input type="text"  name="asunto" required="" placeholder="motivo"></td>

						</tr>

						<tr class="formulario_bloque2">
							<td>Mensaje</td>
							<td><input type="text"  name="mensaje" required="" placeholder="Peticion - Queja - Reclamo"></td>

						</tr>


						<tr>
							<td><button type="submit">Enviar</button></td>
						</tr>




				</table>
				</form>
</div>
<?php
	// Permite incluir el script de un archivo, en el archivo donde es llamado
	//include_once, Permite una solo inclusión del archivo
		include_once('php/footer.inc');
?>

</body>
</html>