<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>FederalOdonto</title>
		<meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
		<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
		<link rel="shortcut icon" href="http://d1ujqdpfgkvqfi.cloudfront.net/favicon-generator/htdocs/favicons/2015-01-06/61712a698ed488328c0c60f379023ace.ico">
		 <script type="text/javascript" src="js/jquery.min.js"></script>
	 					 <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/slides.js"></script>
       
		<!-- =======================================================
				Theme Name: Medilab
				Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
				Author: BootstrapMade.com
				Author URL: https://bootstrapmade.com
		======================================================= -->
	</head>
    <body>
    <script type="text/javascript">
	$(document).ready(function(){
		atualiza();
	});

	function atualiza(){
        
	   $.get('mudaMes.php?setMes=proximo', function(resultado){
	   $.get('index2.php', function(resultado){
		$('#tabela').html(resultado);
	   })
	   setTimeout('atualiza()', 3000);
	   })
	}
   </script>
   
        <div id='tabela'>
Este conteúdo será atualizado daqui a alguns segundos....
</div>
</body>