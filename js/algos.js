// I realize this assignment is not yet complete 
// (typical excuses: preparing for the assessment and ran out of time; 
// crazy week working an insane amount of hours on other significant projects,
// blah blah. I know, not cool.)
// But I will be returning to complete as time permits. 
// I wanted to post the chunks I have in meantime


function generate_string() {
	var randstring = Math.random().toString(36).substring(20);
	randstring.length = Math.random(20);
	console.log(randstring.length);
	return randstring;
}

generate_string()

// create function with for loop to iterate through words, return word length as variable, compare, return longest word)
function longest_word(array){

}


longest_word(["long phrase","longest phrase","longer phrase"])




// write a function that takes two objects and checks to see if they share at least one key-value pair
// input - two objects
// make loop call the data for each object at each key, and each value
// create conditional statement to set to true if key is same, and another for if value is same
// create another conditional statement to make test boolean true if key: same && value: same

var object1 = {name: "Steven", age: 54}
var object2 = {name: "Tamir", age: 54}

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {sky: "infinite", sea: "expansive"};
var object4 = {sun: "hot", stars: "distant"}; 

// print for debug as necessary
// console.log(object1);
// console.log(object2);
// console.log(object3);
// console.log(object4);

function compare(anobject, anotherobject) {
	var match = false; 
		if (anobject[0] == anotherobject[0]){ 
			match = true;
		}
		else {
			match = false;
		}
		
	return match; 
}

// compare(object1, object2); 
compare(object3, object4);