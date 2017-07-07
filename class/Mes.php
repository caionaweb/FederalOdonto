<?php

class Mes
{

    private $contadorDia;
    private $totalDias;
    private $ano;
    private $mesAtual;
    private $dias;

    function __construct($mesAtual, $ano)
    {
        $this->mesAtual = $mesAtual;
        $this->contadorDia = -1;
        $this->ano = $ano;
        $this->preencheArrayTotalDias();
        $this->preencheArrayDias();
    }

    private function preencheArrayTotalDias()
    {
        $this->totalDias = array('1' => 31, '2' => 28, '3' => 31, '4' => 30, '5' => 31, '6' => 30,
            '7' => 31, '8' => 31, '9' => 30, '10' => 31, '11' => 30, '12' => 31);
        if (($this->ano % 4) == 0 && ($this->ano % 100) != 0 || ($this->ano % 400) == 0) {
            $this->totalDias['2'] = 29;
        }
    }

    private function preencheArrayDias()
    {
        $this->dias = array();
        for ($i = 0; $i < $this->getTotalDias(); $i++) {
            $this->dias[$i] = $i + 1;
        }
    }

    public function getTotalDias()
    {
        return $this->totalDias[$this->mesAtual];
    }

    public function getAno()
    {
        return $this->ano;
    }

    public function getNome()
    {
        $nomesMes = array('1' => "Janeiro", '2' => "Fevereiro", '3' => "Março", '4' => "Abril",
            '5' => "Maio", '6' => "Junho", '7' => "Julho", '8' => "Agosto", '9' => "Setembro",
            '10' => "Outubro", '11' => "Novembro", '12' => "Dezembro");
        return $nomesMes[$this->mesAtual];
    }

    private function returnaPrimeiroDia()
    {
        return jddayofweek(cal_to_jd(CAL_GREGORIAN, $this->mesAtual, "01", $this->ano), 0);
    }

    public function mesAnterior()
    {
        if ($this->mesAtual == 1) {
            return $this->mesAtual = 12;
        }
        return $this->mesAtual - 1;
    }

    public function proximoMes()
    {
        if ($this->mesAtual == 12) {
            return $this->mesAtual = 1;
        }
        return $this->mesAtual + 1;
    }


    public function proximoAno()
    {
        if ($this->mesAtual == 12) {
            return $this->ano += 1;
        }
        return $this->ano;
    }

    public function anoAnterior()
    {
        if ($this->mesAtual == 1) {
            return $this->ano -= 1;
        }
        return $this->ano;
    }

    /*
    O método "preencheTd" é muito importante, ele retorna o dia e o link de agendamento que deve ser colocado dentro da "td" que o invocou.
    Com o parâmetro "linha" e "coluna" que lhe foi passado, ele verifica qual colocação vai ser preenchida e retorna o valor certo para aquela posição.
    */

    public function preencheTd($linha, $coluna)
    {
        $dia = $this->retornaDia($linha, $coluna);
        if ($this->podeAgendar($dia, $coluna)) {
            return "<td class='borda dia'> <a class='podeAgendar' href=\"javascript:carregaForm('formularioAgendamento.php" . $this->formularioPara($dia) . " ')\"> " . $dia . "</a></td>";
        } else {
            return "<td class='borda dia naoPodeAgendar'>" . $dia . "</td>";
        }
    }

    private function retornaDia($linha, $coluna)
    {
        if ($this->returnaPrimeiroDia() > $coluna && $linha == 0) {
            return " ";
        } else if (array_key_exists($this->contadorDia + 1, $this->dias)) {
            $this->contadorDia++;
            return $this->dias[$this->contadorDia];
        } else {
            return " ";
        }

    }

    private function podeAgendar($dia, $coluna)
    {
        if ($this->mesAtual > date('m') && $this->ano == date('Y') && $coluna != 0 && $coluna != 6 || $dia >= date('j') && $this->mesAtual == date('m') && $this->ano == date('Y') && $coluna != 0 && $coluna != 6) {
            return true;
        }
        return false;
    }

    private function formularioPara($dia)
    {
        return "?setDia=" . $dia . "&setMes=" . $this->getNome() . "&setAno=" . $this->getAno() . "&setNumeroMes=" . $this->mesAtual;
    }
}