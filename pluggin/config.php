<?php
$host = "localhost";
$user = "root";
$password = "tioclaudio"; // La contraseña de tu usuario, por defecto está vacía.
$database = "reciclaje_bd";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Error de conexión: " . mysqli_connect_error());
}
?>