<?php

class AgendamentoDAO
{
    private $conexao;

    function __construct($conexao)
    {
        $this->conexao = $conexao;
    }

    function salvaAgendamento($mes, $usuarioId, $horarioId)
    {
        $query = "insert into agendamentos (mes, usuario_id, horario_id) values ('{$mes}', $usuarioId, $horarioId)";
        return mysqli_query($this->conexao, $query);
    }
}

?>