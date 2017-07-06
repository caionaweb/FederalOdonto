<?php 
	class HorarioDAO{
		private $conexao;

		function __construct($conexao)	{
			$this->conexao = $conexao;
		}

		function listaHorarios($dia, $mes){
			$horarios = array();
			$query = "select * from horarioDisponivel{$mes} where dia= '{$dia}' and disponivel = 1";
			$resultado = mysqli_query($this->conexao, $query);
			while ($esteHorario = mysqli_fetch_assoc($resultado)){
				array_push($horarios, $esteHorario);
			}
			return $horarios;
		}

		function buscaHorario($id){
			$query = "select horario from horarioDisponivelJaneiro where id = {$id}";
			$resultado = mysqli_query($this->conexao, $query);
			$horario = mysqli_fetch_assoc($resultado);

			return $horario;
		}

		function agendaHorario($dia, $mes, $horario){
			$query = "update horarioDisponivel{$mes} set disponivel = 0 where dia = {$dia} and horario = '{$horario}'";
			return mysqli_query($this->conexao, $query);
		}

		function buscaIdHorario($dia, $mes, $horario){
			$query = "select * from horarioDisponivel{$mes} where dia = {$dia} and horario = '{$horario}'";
			$resultado = mysqli_query($this->conexao, $query);
			$horario = mysqli_fetch_assoc($resultado);
			return $horario['id'];
		}
		
	}
 ?>