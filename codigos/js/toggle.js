var logo = document.querySelector('.logo');
		var form = document.querySelector('.wew');
		var logo1 = document.querySelector('.logo1');
		var form1 = document.querySelector('.wow');
		var logo2 = document.querySelector('.logo2');
		var form2 = document.querySelector('.waw');
		
		logo1.addEventListener('click', function (e) {
			form.classList.toggle('open');
			console.log('lalala');
		});
		logo.addEventListener('click', function (e) {
			form1.classList.toggle('open');
			console.log('hu3');
		});
		logo2.addEventListener('click', function (e) {
			form2.classList.toggle('open');
			console.log('br');
		});