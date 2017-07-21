function menu() {
		alert('Hello!  Welcome to the Pizza Hut Menu.\nWe have the following menu items to choose from:\n\nPizza\nCheese Sticks\nBread Sticks\n2 Liter Pepsi Products');
}


function addMenuItem() {
	alert("enter function");
	var menuitem = document.getElementById("menuitem").value;
	if (menuitem == "pizza") {
		var input = document.createElement("input");
		input.type = "text";
		input.name = "toppings";
		alert("in if");
		document.getElementById("form_names").appendChild(input);
		alert("end if");
	}

}
