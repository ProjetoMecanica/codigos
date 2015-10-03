
	<div id="mid">
		 <h2><center> Cadastro de Cliente </center></h2>
 <br />
 <link rel="stylesheet" href="estilo.css" />
 <form name="cadCliente" method="post" action="#" onSubmit="return validaCampo();">
     <div id="formu">
		<div class="linhaEtiqueta">
		 <div class="etiqueta">Nome:</div>
		 <input type="text" class="caixa" name="txtModelo" placeholder="Nome">
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CPF/CNPJ:</div>
		 <input type="text" class="caixa" name="cpf" placeholder="000.000.000-00 ou 00.000.000/0000-00">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">RG:</div>
		 <input type="text" class="caixa" name="rg" placeholder="00.000.000-0">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">Insc.est:</div>
		 <input type="text" class="caixa" name="insc" placeholder="Insc.est">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">End:</div>
		 <input type="text" class="caixa" name="end" placeholder="Endereço">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">Cidade:</div>
		 <input type="text" class="caixa" name="cidade" placeholder="Cidade">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">Data.nasc:</div>
		 <input type="date" class="caixa" name="date" placeholder="Data de nascimento">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CEP:</div>
		 <input type="text" class="caixa" name="cep" placeholder="CEP">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">E-mail:</div>
		 <input type="text" class="caixa" name="email" placeholder="email@dominio.com.br">
		</div>
		<div id="input">
		<input type="reset" value="Limpar" name="limpar" class="botaoLimpar">
		<input type="submit" value="Enviar" name="enviar" class="botaoConfirma">
		</div>
	 </div>
	</form>
	</div>
