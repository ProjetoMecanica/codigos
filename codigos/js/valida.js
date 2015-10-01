/*
Função: validaCampo()
Descrição: Deve ser realizada para validar campos nos formulários.
Preenchimento:
frmNomeForm: colocar o nome do formulário
txtCaixa2: colocar o nome do campo a ser validado
value: valor a ser validado
Esta função está explicativa, caso haja a necessidade de criar
uma nova verificação colocar entre 
}
	 else 
como segue o exemplo
}
else if(document...){
	
}
	 else 
*/
function validaCampo ()
 {
     if (document.frmNomeForm.txtCaixa2.value=="")
     {
         alert ("Por favor digite conteúdo na caixa2.");
		 document.formulario.txtCaixa2.focus();
         return false;
	}
	 else     
		return true;
	}