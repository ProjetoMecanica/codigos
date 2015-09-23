<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<meta charset="utf-8">
		<title>
			Páginas unidas
		</title>
		<link rel="stylesheet" href="css/estilo.css" />
		<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
		<script src="js/script.js"></script>
	</head>
	<body>
		<div id="tudo">
			<header>
				<p>
					<?php include_once('top.php');?>
				</p>
			</header>
				<div id="conteudo">
					<?php include_once('menu.php');?>
					<?php include_once('sis/conteudo.php');?>
					
				</div>
			
			<footer>
				<p> <?php include_once('footer.php');?></p>
			</footer>
		</div>
	</body>
</html>