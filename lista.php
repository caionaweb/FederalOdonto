
<!DOCTYPE html>
<html lang="pt-br">
  <head>


<title>
  
    Lista Consultas Agendadas
  
</title>
<!-- Última versão CSS compilada e minificada -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Tema opcional -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Última versão JavaScript compilada e minificada -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<body>
<div class="container">
	<div class="row">
        <div class="span12">
    		<table class="table table-condensed table-hover">
    			<thead>
    				<tr>
    					<th>Usuário</th>
    					<th>Mês</th>
    					<th>Dia</th>
    					<th>Hora</th>
    				</tr>
    			</thead>
    			<tbody>
    				
<?php
    $con=mysqli_connect("localhost","root","","agendamentoonline");
    // Check connection
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }


     
    $result = mysqli_query($con,"SELECT usuario.nome as usuario, agendamentos.mes as mes, 
    agendamentos.horario_id as dia_h
    FROM `agendamentos`
                INNER JOIN `usuario` on usuario.id = agendamentos.usuario_id
     ;");

    $result2 = mysqli_query($con,"SELECT horario.horario as hora, 
    agendamentos.horario_id as agenda, horario.dia as dia 
    FROM `horario`
    INNER JOIN `agendamentos` on horario.id = agendamentos.horario_id   
     ;");

if (!$result) {
    printf("Error: %s\n", mysqli_error($con));
    exit();
}
    while($row = mysqli_fetch_array($result)) {
        $row2 = mysqli_fetch_array($result2);
        echo "<tr>";
        echo "<td>"." " . $row['usuario'] . "</td>"  . "<td>" . " " . $row['mes'] . "</td>" . "<td>"  . "  " . $row2['dia'] . "</td>"  . "<td>"  . " " . $row2['hora'] . "</td>" ;
        echo "</tr>";
    }


    mysqli_close($con);
?>


    			</tbody>
    		</table>
    	</div>
	</div>
</div>
<body>
