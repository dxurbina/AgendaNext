<?php


    require('../server/conexion.php');

    $userName=$_POST['username'];
    $passwrd=$_POST['password'];

    $resultado_consulta = Select("SELECT id, email, nombre, contrasena, fechaNacimiento FROM usuario WHERE email='".$userName."';");

    
   if( count($resultado_consulta) > 0 )
   {
     
      foreach($resultado_consulta as $campo => $value)
      {
         $pwdhash=$value['contrasena'];
      }
     
      if (password_verify($passwrd, $pwdhash))
      {
         $response['msg']='OK';
      
      }
      else
      {
         $response['msg'] = 'Contraseña incorrecta';
      }
   }
   else
   {
      $response['msg'] = 'Correo es incorrecto';
   }
    echo json_encode($response);

 ?>
