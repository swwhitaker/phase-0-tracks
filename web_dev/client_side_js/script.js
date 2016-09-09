console.log("This works!");

var list_items = document.getElementsByTagName("li");

var list_item0 = list_items[0];

list_item0.style.border = "3px solid blue"; 

list_item0.style.color = "green";
function font_change(event) {
	console.log("clicked!");
	event.target.style.color = "white";
} 

var paragraph = document.getElementsByTagName("p")[0];
paragraph.addEventListener("click", font_change);