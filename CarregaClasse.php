<?php 
	function customAutoload($className){
		require_once "class/" . $className . '.php';
		}

		spl_autoload_register('customAutoload');
 ?>