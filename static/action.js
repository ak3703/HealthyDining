function print() {
	var e = document.getElementById("restaurant");
	var strUser = e.options[e.selectedIndex].text;
	window.alert(strUser);
}