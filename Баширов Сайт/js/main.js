window.addEventListener("load", (event) => {
	let tab1 = document.getElementById("click_tab1")
	tab1.onclick = function () {
		document.getElementById("content_tab1").style.display = "block"
		document.getElementById("content_tab2").style.display = "none"
	}
	let tab2 = document.getElementById("click_tab2")
	tab2.onclick = function () {
		document.getElementById("content_tab1").style.display = "none"
		document.getElementById("content_tab2").style.display = "block"
	}

	//авторизация/регистрация
	
});