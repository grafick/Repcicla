<?php

include "config.php";

$nombre = $_POST['r_nombre_completo'];
$correo = $_POST['r_correo'];
$numero_celular = $_POST['r_celular'];
$numero_calle = $_POST['r_numero_calle'];
$nombre_calle = $_POST['r_nombre_calle'];
$comuna = $_POST['r_comuna'];
$ciudad = $_POST['r_ciudad'];
$categoria = $_POST['tipo_categoria'];
$cobertura = $_POST['area_cobertura'];

$query = "INSERT INTO usuario_recolector (r_nombre_completo, r_correo, r_celular, r_numero_calle,r_nombre_calle, r_comuna, r_ciudad, tipo_categoria, area_cobertura) 
          VALUES ('$nombre', '$correo', '$numero_celular', '$numero_calle', '$nombre_calle', '$comuna', '$ciudad', '$categoria', '$cobertura')";

if (mysqli_query($conn, $query)) {
    echo "Registro exitoso!";
} else {
    echo "Tuvimos un problema " . $query . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
