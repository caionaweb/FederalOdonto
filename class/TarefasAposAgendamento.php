<?php

class TarefasAposAgendamento
{
    private $dia;
    private $mes;
    private $horario;
    private $agendamentoDAO;
    private $horarioDAO;
    private $usuarioDAO;
    private $cliente;

    function __construct($dia, $mes, $horario, Usuario $cliente, AgendamentoDAO $agendamentoDAO, HorarioDAO $horarioDAO, UsuarioDAO $usuarioDAO)
    {
        $this->dia = $dia;
        $this->mes = $mes;
        $this->horario = $horario;
        $this->agendamentoDAO = $agendamentoDAO;
        $this->horarioDAO = $horarioDAO;
        $this->usuarioDAO = $usuarioDAO;
        $this->cliente = $cliente;
    }

    public function tarefasPosAgendamento()
    {
        $this->cliente->verificaUsuario();
        $this->salvaUsuario();
        $this->ocupaHorario();
        $this->salvaAgendamento();
    }

    private function salvaUsuario()
    {
        $usuarioId = $this->usuarioDAO->buscaIdUsuario($this->cliente->getNome(), $this->cliente->getEmail(), $this->cliente->getTelefone());
        if ($usuarioId == NULL) {
            $this->usuarioDAO->salvaUsuario($this->cliente->getNome(), $this->cliente->getEmail(), $this->cliente->getTelefone());
        }
    }

    private function ocupaHorario()
    {
        $this->horarioDAO->agendaHorario($this->dia, $this->mes, $this->horario);
    }

    private function salvaAgendamento()
    {
        $usuarioId = $this->usuarioDAO->buscaIdUsuario($this->cliente->getNome(), $this->cliente->getEmail(), $this->cliente->getTelefone());
        $horarioId = $this->horarioDAO->buscaIdHorario($this->dia, $this->mes, $this->horario);
        $this->agendamentoDAO->salvaAgendamento($this->mes, $usuarioId, $horarioId);
    }

}