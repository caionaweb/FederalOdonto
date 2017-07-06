<?php 

	require_once "cabecalho.php";

		session_start();
		if(isset($_SESSION["msg"])){
			?> <p class="text-success"><?=$_SESSION["msg"]?></p>
			<?php
				unset($_SESSION["msg"]);
		}
 ?>

	<?php
			require_once "CarregaClasse.php";
			
			if(!isset($_COOKIE["mes"])){
				$numeroMes = date('n');
				setcookie("mes", $numeroMes);
			}else{
				$numeroMes = $_COOKIE['mes'];
			}

			if(!isset($_COOKIE["ano"])){
				$ano = date('Y');
				setcookie("ano", $ano);
			}else{
				$ano = $_COOKIE['ano'];
			}

			$montador = new MontaMes(new Mes($numeroMes, $ano));
			echo "<div class ='container_calendario'>";
				$montador->montaOMes();
			echo "</div>";
	?>
		
	</body>
</html>
