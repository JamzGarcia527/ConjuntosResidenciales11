<?php

include_once ('php/utilidades.php');

if(isset($_SESSION['email'])){

	if ($_SESSION['rol']=='cliente'){
		header('location:index.php');
		die();
	}
}
?>



				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('header.php');

				?>
				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/menu.php');
					
				?>



			
				
			<div id="banner1">
			<section class="clear">

				<form action="php/registro.php" method="post">
										<h1 align="center">Registrate</h1>
					<table align="center">
						<tr>
							<td>Email</td>
							<td><input type="text" name="email" required="@" placeholder="email"></td> 
						</tr>
						<tr>
							<td>Contraseña</td>
							<td><input type="password"  name="contrasena" required="" placeholder="********"> Mayus + miniscula + #numeros (8 caracteres minimo)</td> 
						</tr>
						<tr>
							<td>Confirmar Contraseña</td>
							<td><input type="password"  name="con_contrasena" required="" placeholder="********"> Mayus + miniscula + #numeros (8 caracteres minimo)</td>
						</tr>
						<tr>
							<td>Fecha Nacimiento</td>
							<td><input type="date"   name="fec_nac" required="" placeholder="Año - Mes - Dia "></td>
						</tr>
						<tr>
							<td>Nacionalidad</td>
							<td><input type="text" name="nacionalidad" required="" placeholder="Colombia"></td>
						</tr>
						<tr>
							<td>Region</td>
							<td><input type="text" name="region" required="" placeholder="Cundinamarca "></td>
						</tr>
						<tr>
							<td>Ciudad</td>
							<td><input type="text" name="ciudad" required="" placeholder="Bogotá "> </td>
						</tr>

					<?php if (isset($_SESSION['rol'])=='cliente'){ ?>

						<tr>
							<td>Rol</td>
								<td> <select name="rol">
  									<option value="admin">Administrador</option>
 									<option value="user">Usuario</option>
 									<option value="guarda">Guarda</option>
								</select> 
							</td>
						</tr>
						<?php } ?>

						<tr>
							<td><button type="submit">Registrar</button></td>
						</tr>
						
					</table>
				</form>
				
			</section>
		</div>
		<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/footer.inc');
				?>
