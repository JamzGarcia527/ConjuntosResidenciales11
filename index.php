<?php

	include_once('header.php');

	include_once('php/menu.php');

	include_once('php/banner.php');
	
?>
<div id="contenido">

		<section  id="eventos">
					<div class="FC"><caption><h1> Enterate de los Ultimos Eventos </h1></caption></div>
					<?php include_once('php/eventos.php');?>
		</section>
						
				<section  id="noticias">
					<div class="FC"><h4>Noticias</h4>
						<?php include_once('php/ingresar_noticias.php');?>


					</div>
					
				</section>


				<section id="reserva">
					<div class="titulo"><h4>Reserva</h4>
					<?php include_once('php/ingresarreservaprueba.php');?></div>
				</section>
				

</div>

<?php
	include_once('php/footer.inc')
?>

