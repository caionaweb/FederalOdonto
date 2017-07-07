<!DOCTYPE html>
<html lang="pt-br">
<title>

    Lista Consultas Agendadas

</title>
<head>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/funcoes.js"></script>
</head>
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
                $con = mysqli_connect("localhost", "root", "", "agendamentoonline");
                // Check connection
                if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                }


                $result = mysqli_query($con, "SELECT usuario.nome as usuario, agendamentos.mes as mes,  
    agendamentos.horario_id as dia_h 
    FROM `agendamentos` 
                INNER JOIN `usuario` on usuario.id = agendamentos.usuario_id 
     ;");

                $result2 = mysqli_query($con, "SELECT horario.horario as hora,  
    agendamentos.horario_id as agenda, horario.dia as dia  
    FROM `horario` 
    INNER JOIN `agendamentos` on horario.id = agendamentos.horario_id   
     ;");

                if (!$result) {
                    printf("Error: %s\n", mysqli_error($con));
                    exit();
                }
                while ($row = mysqli_fetch_array($result)) {
                    $row2 = mysqli_fetch_array($result2);
                    echo "<tr>";
                    echo "<td>" . " " . $row['usuario'] . "</td>" . "<td>" . " " . $row['mes'] . "</td>" . "<td>" . "  " . $row2['dia'] . "</td>" . "<td>" . " " . $row2['hora'] . "</td>";
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