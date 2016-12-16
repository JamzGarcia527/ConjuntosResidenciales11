
<?php
	// Permite incluir el script de un archivo, en el archivo donde es llamado
	//include_once, Permite una solo inclusión del archivo
	Include_once('header.php');
	Include_once('php/menu.php');
?>
	
		
				<div id="csspropietario">	
					<form action="reg_pro.php" method="post">
					<h1 class="titulo">Ingreso de Propietarios</h1>
					<table align="center">
						<tr class="formulario_pro">
							<td>Nombre</td>
								<td><input type="text"  name="nombre" required="" placeholder="Nombre Propietario"></td>

						</tr>



						<tr class="formulario_pro2">
							<td>Apellido</td>
								<td><input type="text"  name="apellido" required="" placeholder="Apellido Propietario"></td>

						</tr>

						</tr>

						<tr class="formulario_pro">
							<td>Identificación</td>
								<td><input type="number"  name="identificacion" required="" placeholder="Ej: 51 257 527"></td>
						
						</tr>

						<tr class="formulario_pro2">
						<td>Celular</td>
						<td><input type="number"  name="celular required="" placeholder="EJ: 320 427 0255""></td>

							

						</tr>

						<tr class="formulario_pro">
						<td>Email</td>
						<td><input type="text"  name="email" required="" placeholder="EJ: user@dmonicio.com"></td>

					


						<tr>
							<td><button type="submit">Registrar</button></td>
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