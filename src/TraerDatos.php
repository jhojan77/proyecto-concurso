<?php
require_once("conexion.php");



$sql= "SELECT * FROM jugador";
$resultado  = mysqli_query($conexion,$sql);

if($resultado ){
	
	echo "<script>
	alert('hay conexion');
	</script>";
}else {
	echo
	"<script>
	alert('No hay');
	
	</script>";
}
?>