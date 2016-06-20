// PSEUDOCODE
// Get a string
// Reverse the letters of the string
  // Loop through each letter
  // Push the last letter to the new reversed word
  // IF there is a space, keep the space
// Print out the reversed string

function reverse(string) {
  var reverse_string = "";
  for (var i = string.length -1; i >= 0; i--) {
    reverse_string += string[i];
  };
  return (reverse_string);
}

console.log(reverse("JavaScript"));
console.log(reverse("hello"));

if (9 < 12) {
  console.log(reverse("I'm true!"));
}
