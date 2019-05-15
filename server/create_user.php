<?php

require('./conexion.php');

//crear 3 usuarios con las contraseña encryptadas
$hash = password_hash('oscar123', PASSWORD_DEFAULT);
$resultado_consulta = executeQuery("INSERT INTO usuario(email, nombre, contrasena, fechaNacimiento)
VALUES ('alcantaraosc@gmail.com', 'Oscar Alcantara', '".$hash."', '1990-12-12');");

$hash = password_hash('jose123', PASSWORD_DEFAULT);
$resultado_consulta = executeQuery("INSERT INTO usuario(email, nombre, contrasena, fechaNacimiento)
VALUES ('josemendoza@gmail.com', 'Jose Mendoza', '".$hash."', '1989-10-15');");

$hash = password_hash('perla123', PASSWORD_DEFAULT);
$resultado_consulta = executeQuery("INSERT INTO usuario(email, nombre, contrasena, fechaNacimiento)
VALUES ('perlazamora@gmail.com', 'Perla Zamora', '".$hash."', '1989-05-25');");


if ($resultado_consulta > 0)
{
    echo "<script> alert('usuarios registrados'); </script>";
}



 ?>
