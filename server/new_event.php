<?php
  
    require('../server/conexion.php');

    $titulo=$_POST['titulo'];
    $start_date=$_POST['start_date'];
    $allDay=$_POST['allDay'];
    $end_date=$_POST['end_date'];
    $end_hour=$_POST['end_hour'];
    $start_hour=$_POST['start_hour'];

    $resultado_consulta = executeQuery("INSERT INTO evento (titulo, fechaInicio, horaInicio, fechaFinalizacion, horaFinalizacion, todoDia) 
    VALUES ('$titulo',  '$start_date',  '$start_hour', '$end_date','$end_hour',$allDay); ");

    $data['msg']="OK";

    echo json_encode($data)


 ?>
