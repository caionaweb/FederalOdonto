<?php
require_once "CarregaClasse.php";
require_once "conecta.php";
require_once "cabecalho.php";

$dia = $_GET['setDia'];
$mes = $_GET['setMes'];
$ano = $_GET['setAno'];
$numeroMes = $_GET['setNumeroMes'];

$horarioDao = new HorarioDAO ($conexao);

$listaHorarios = $horarioDao->listaHorarios($dia, $mes);

?>
<div class='container'>
    <h1>Formulário de Agendamento</h1>
    <form action="lista.php" method="post">
        <input type="hidden" name="dia" value="<?= $dia ?>">
        <input type="hidden" name="mes" value="<?= $mes ?>">
        <table>
            <tr>
                <td><p> Horários Disponíveis para o dia <?= $dia ?> do mês de <?= $mes ?> . </p></td>
                <td>
                    <select name="horario">

                        <?php
                        foreach ($listaHorarios as $horario) : ?>
                            <option><?= $horario['horario'] ?></option>
                            <?php
                        endforeach
                        ?>
                </td>
            </tr>
            <tr>
                <td>Nome: <input type="text" name="nome"></td>
            </tr>
            <tr>
                <td>Email: <input type="email" name="email"></td>
            </tr>
            <tr>
                <td>Telefone: <input type='phone' name="telefone"></td>
            </tr>
            <tr>
                <td>
                    <button class="btn btn-primary" type="submit">Agendar</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>