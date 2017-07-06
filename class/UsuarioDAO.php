<?php
	class UsuarioDAO{

		private $conexao;

		function __construct($conexao)	{
			$this->conexao = $conexao;
		}

		function buscaIdUsuario($nome, $email, $telefone){
			$query = "select * from usuario where nome = '{$nome}' and email = '{$email}' and telefone = '{$telefone}'";
			$resultado = mysqli_query($this->conexao, $query);
			$usuario = mysqli_fetch_assoc($resultado);
			return $usuario['id'];
		}

		function salvaUsuario($nome, $email, $telefone){
			$query = "insert into usuario (nome, email, telefone) values ('{$nome}' , '{$email}', '{$telefone}')";
			return mysqli_query($this->conexao, $query);
		}
	}