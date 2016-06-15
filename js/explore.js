// PSEUDOCODE
// Get a string
// Reverse the letters of the string
  // Loop through each letter
  // Push the last letter to the new reversed word
  // IF there is a space, keep the space
// Print out the reversed string

function reverseString(string) {
  reverse_string = "";
  for (var i = string.length -1; i >= 0; i-=1) {
    reverse_string += string[i];
  };
  console.log(reverse_string);
}

var testString = "JavaScript";
reverseString("JavaScript");

//console.log(testString.length)
