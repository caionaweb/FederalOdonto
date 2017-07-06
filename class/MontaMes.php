<?php
	class MontaMes{
		private $mes;
		
		function __construct(Mes $mes){
			$this->mes = $mes;				
		}

		
		 public function montaOMes(){
			
			echo "<div onclick='anteriorMes()' class='btn btn-info btn-sm'> Volta </div>";
			echo "<div onclick='proximoMes()' class='btn btn-info btn-sm'> Avança </div>";
			echo "<table class='tableCalendario'>";
			echo "<h1>" . $this->mes->getNome() . "/" . $this->mes->getAno() . "</h1>" ;

			//Abaixo há dois links para alterar o mês, ambos vão para a página "mudaMes" passando o parâmetro "anterior" ou "proximo" pela URL. Para ver como o sistema reage à isso, visualize o arquivo "mudaMes.php".
			
			echo "<tr>";
				echo "<br>";
				echo "<td class= 'semana borda'>D</td>";
				echo "<td class= 'semana borda'>S</td>";
				echo "<td class= 'semana borda'>T</td>";
				echo "<td class= 'semana borda'>Q</td>";
				echo "<td class= 'semana borda'>Q</td>";
				echo "<td class= 'semana borda'>S</td>";
				echo "<td class= 'semana borda'>S</td>";
			echo "</tr>";

			for ($linha=0; $linha < 6; $linha++) { 
				echo "<tr>";
				for ($coluna=0; $coluna < 7; $coluna++) {
				/*
				Depois de criar os seis "tr"s, o sistema cria sete "td"s dentro de cada "tr", fazendo assim uma tabela de seis linhas por sete colunas.
				Dentro de cada "td", é chamado o método "preencheTd", este método precisa de dois parâmetros, "linha" e "coluna".
				Para visualizar como ele funciona, veja na classe "mes".
				*/
					echo $this->mes->preencheTd($linha, $coluna);
				}			
				echo "</tr>";
			}
			echo "</table>";
		}
	}