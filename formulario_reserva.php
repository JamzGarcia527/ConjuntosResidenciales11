<?php
	// Permite incluir el script de un archivo, en el archivo donde es llamado
	//include_once, Permite una solo inclusión del archivo
	Include_once('header.php');
	Include_once('php/menu.php');
?>



			<div id="cssapartamento">
				<form action="php/registrar_reservas.php" method="post">
					
					<table align="center">
					<h1 align="center">Realiza tu Reserva</h1>
					
							<tr class="formulario">


							<td>Concepto</td>
							<td><select  name="concepto" required="" placeholder="Salon_comunal - Piscina - Parqueadero - humedal">
                             <option value="Salon Comunal" required="" placeholder="Salon_comunal"> Salon Comunal  </option>
                             <option value="piscina"  required="" placeholder=" Piscina"> Piscina </option>
                             <option value="humedal"  required="" placeholder=" Piscina">  Humedal </option>
                             <option value="Parqueadero"  required="" placeholder=" Piscina"> Parquedero </option>


							 </td>
						</tr>



						<tr class="jhon2">
						<td>Fecha Reservacion</td>
						<td><input type="date"  name="fecha_reserva"></td>
						</tr>

						

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






