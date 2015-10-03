<!DOCTYPE html>
<html lang="pt-BR">
	<head>
		<script>
	function validaCampo ()
 {
     if (document.cadCliente.cpf.value=="")
     {
         alert ("Campo CPF/CNPJ obrigatório.");
		 document.cadCliente.cpf.focus();
         return false;
	}
	if (document.cadCliente.rg.value=="")
     {
         alert ("Campo RG obrigatório.");
		 document.cadCliente.rg.focus();
         return false;
	 }
	 else     
		return true;
	}
	</script>
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
					<?php include_once('sis/cadCliente.php');?>
					
				</div>
			
			<footer>
				<p> <?php include_once('footer.php');?></p>
			</footer>
		</div>
	</body>
</html>