	<div id="mid">
		<h1>MODELO BrBa</h1>
		<h2>O modelo criado por alunos SENAI para alunos SENAI</h2>
		Esta é a página de modelo geral para o projeto Sistema de Gerenciamento
		de Oficinas Mecânicas, ou mais conhecido como SGOM.<br />
		Esta página tem por objetivo fornecer os padrões de desenvolvimento,
		estilo CSS, codificação javascript, etc.</br>
		O Modelo BrBa, surgiu com o termo Brazilians Banned(BrBa), nome adotado
		pelo grupo de alunos escolhidos para desenvolver o projeto SMOG. Há quem
		diga que o BrBa na verdade significa Breaking Bad (da série), mas não há
		nenhuma razão para acreditar nisso, já que todos os envolvidos não deram
		passos errados(até o momento).
	<br />
	<!-- modelo formulários -->
	<h2><center> Formulários</center></h2>
	<br />
	<form name="frmNomeForm" method="post" action="#" onSubmit="return validaCampo();">
     <div id="formu">
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CAIXA 1:</div>
		 <input type="text" class="caixa" name="txtCaixa1" placeholder="Caixa 1" required="required">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CAIXA 2:</div>
		 <input type="text" class="caixa" name="txtCaixa2" placeholder="Caixa 2">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">RG:</div>
		 <input type="text" class="caixa" name="txtRg" maxlength="10" placeholder="00.000.000-0">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CPF:</div>
		 <input type="text" class="caixa" name="txtCpf" maxlength="11" placeholder="000.000.000-00">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">E-MAIL:</div>
		 <input type="email" class="caixa" name="txtEmail" placeholder="email@dominio.com.br">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">E-MAIL:</div>
		 <input type="date" name="txtDate" class="caixa" max="2050-12-31" min="1900-01-01">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">NÚMERO:</div>
		 <!-- campo número
						step: coloca o passo que o número irá aumentar, se for de 2 em 2, no step colocar 2.
						min: número mínimo que esse campo irá aceitar.
						max: número máximo que esse campo irá aceitar.
					-->
		 <input type="number" name="txtNumber" step="0.1" min="1" max="5" class="caixa">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">SENHA:</div>
		 <input type="password" name="txtSenha" class="caixa" placeholder="Sua senha">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">ARQUIVOS:</div>
		 <input type="file" name="txtUpload" class="caixa">
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">ÁREA DE TEXTO:</div>
		 <textarea name="txtUpload" class="caixa" rows="6"></textarea>
		</div>
		<div class="linhaEtiqueta">
		 <div class="etiqueta">CAIXA1:</div>
		 <input type="text" name="txtCaixaPeq1" class="caixaPequena">
		<div class="etiquetaPequena">CAIXA2:</div>
		 <input type="text" name="txtCaixaPeq1" class="caixaPequena">
		</div>
		<div class="linhaEtiqueta">
			<input type="reset" value="Limpar" name="btnLimpar" class="botaoLimpar">
			<input type="submit" value="Enviar" name="btnEnviar" class="botaoConfirma">
		</div>
	 </div>
	</form>
	<div class="msgErro"> Mensagens de erro devem ser exibidas assim</div>
	<div class="msgConfirm"> Mensagens de confirmação devem ser exibidas assim</div>
	</div>
