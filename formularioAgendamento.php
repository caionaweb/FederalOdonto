 <?php
require_once "CarregaClasse.php";
require_once "conecta.php";
$dia       = $_GET['setDia'];
$mes       = $_GET['setMes'];
$ano       = $_GET['setAno'];
$numeroMes = $_GET['setNumeroMes'];

$horarioDao = new HorarioDAO($conexao);

$listaHorarios = $horarioDao->listaHorarios($dia, $mes);

?> 
       <!DOCTYPE html> 
    <html> 
        <head> 
                    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"> 
            <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
            <link rel="stylesheet" type="text/css" href="css/style.css"> 
                <script src="js/jquery.min.js"></script> 
                <script src="js/bootstrap.min.js"></script> 
                <script src="js/funcoes.js"></script> 
            </head> 
    <body> 



                         
    <form class="form-horizontal"  action="agendar.php" method="post"> 
    <fieldset> 
    <!-- Form Name --> 
    <legend>Conformação</legend> 

    <input type="hidden" name="dia" value="<?= $dia ?>"> 
                    <input type="hidden" name="mes" value="<?= $mes ?>"> 
    <!-- Select Basic --> 
    <div class="form-group"> 
    <label class="col-md-4 control-label" for="selectbasic">Horários Disponíveis</label> 
    <div class="col-md-4"> 
        <select id="horario" name="horario" class="form-control"> 
                                <?php
foreach ($listaHorarios as $horario):
?> 
                                       <option><?= $horario['horario'] ?></option> 
                                    <?php
endforeach;
?> 
       </select> 
    </div> 
    </div> 

    <!-- Text input--> 
    <div class="form-group"> 
    <label class="col-md-4 control-label" for="nome">Nome: </label>   
    <div class="col-md-4"> 
    <input id="nome" name="nome" type="text" placeholder="Seu Nome" class="form-control input-md" required=""> 
         
    </div> 
    </div> 

    <!-- Text input--> 
    <div class="form-group"> 
    <label class="col-md-4 control-label" for="telefone">Telefone</label>   
    <div class="col-md-4"> 
    <input id="telefone" name="telefone" type="text" placeholder="Telefone para contato" class="form-control input-md" required=""> 
         
    </div> 
    </div> 

    <!-- Text input--> 
    <div class="form-group"> 
    <label class="col-md-4 control-label" for="email">E-mail</label>   
    <div class="col-md-4"> 
    <input id="email" name="email" type="text" placeholder="Seu Email" class="form-control input-md" required=""> 
         
    </div> 
    </div> 

    <!-- Button (Double) --> 
    <div class="form-group"> 
    <label class="col-md-4 control-label" for="agendar"></label> 
    <div class="col-md-4"> 
        <button id="agendar" name="agendar"  type="submit" class="btn btn-success">Agendar</button> 
        <button id="cancelar" name="cancelar" class="btn btn-danger" onclick="carregaMes()">Cancelar</button> 
    </div> 
    </div> 

    </fieldset> 
    </form> 


        </body> 
    </html>