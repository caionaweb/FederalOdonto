<?php
	
	require_once "CarregaClasse.php";
	
	$mudaPara = $_GET['setMes'];
	
	if ($mudaPara == "anterior") {

		$anoAtual = $_COOKIE['ano'];
		$mesAtual = new Mes($_COOKIE['mes'], $anoAtual);
		
		$mesAtual->anoAnterior();

		$novoMes = $mesAtual->mesAnterior();		
		$novoAno = $mesAtual->getAno();

		setcookie("mes" , $novoMes);
		setcookie("ano", $novoAno);
		header("Location: index.php");
		die();
 		
	} 

	if ($mudaPara == "proximo") {

		$anoAtual = $_COOKIE['ano'];
		$mesAtual = new Mes($_COOKIE['mes'], $anoAtual);
		
		$mesAtual->proximoAno();
		
		$novoMes = $mesAtual->proximoMes();		
		$novoAno = $mesAtual->getAno();

		setcookie("mes" , $novoMes);
		setcookie("ano", $novoAno);		
		header("Location: index.php");
		die();
	}