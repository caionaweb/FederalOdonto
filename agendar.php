<?php
	require_once "conecta.php";
	require_once "CarregaClasse.php";

	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$telefone = $_POST['telefone'];

	$dia = $_POST['dia'];
	$mes = $_POST['mes'];
	$horario = $_POST['horario'];


	$cliente = new Usuario($nome, $email, $telefone);
		
	$tarefas = new TarefasAposAgendamento($dia, $mes, $horario, $cliente, new AgendamentoDAO($conexao), new HorarioDAO($conexao), new UsuarioDAO($conexao));
	$tarefas->tarefasPosAgendamento();
	
	session_start();
	$_SESSION["msg"] = "Horario agendado com sucesso!";
	header("Location:index.php");
	die();

 ?>