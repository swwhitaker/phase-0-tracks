// create new reverse function 
// input: string 
// output: reversed string
// steps: 
// set a variable for characters
// create a loop with a counter variable equal to string length, a condition of the counter being greater than or equal to zero, and a counter that subtracts.
// during the loop, add the characters of the string, then return those added characters


function reverse(string) {
  var char = '';
  for (var i = string.length -1; i >= 0; i--)
    char += string[i];
  return char;
}

reverse("hello");