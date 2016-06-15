// RELEASE 0
// PSEUDOCODE
// Write a FUNCTION that takes in a set of phrases.
//    Loop through each phrase in a set of phrases.
//      Determine the length of each phrase.
//    Return the longest phrase.

function longestPhrase(phraseGroup) {
	var longest = "";
	for (var i = 0; i < phraseGroup.length; i++) {
	    if (longest.length < phraseGroup[i].length) {
	      longest = phraseGroup[i];
	    }
	}
	return longest;
}

// DRIVER CODE
var phrases = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(phrases)
var newPhrases = longestPhrase(["JavaScript", "Ruby", "Node", "MySQL"]);
console.log(newPhrases)

// RELEASE 1
// PSEUDOCODE
// Write a FUNCTION that takes in two objects
//    FOR each KEY , evaluate if both objects have the same KEY
//      IF the two objects have the same KEY and VALUE, is true
//      otherwise remains false

function sharesPairs(object1, object2) {
	var sharesKeys = false;
	for (var k in object1) {
		if (object1[k] == object2[k]) {
			sharesKeys = true;
		};
	};
	return sharesKeys;
};

// DRIVER CODE
var people = sharesPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(people);
var places = sharesPairs({grass: "green", location: "other side"}, {city: "San Francisco", year: 2016});
console.log(places)
var cities = sharesPairs({name: "Paris", country: "France"}, {city: "Vernon", region: "France"});
console.log(cities)
var dogs = sharesPairs({name: "Surely", age: 7}, {age: 7, name: "Spot"});
console.log(dogs)

// RELEASE 2
// PSEUDOCODE
// Write a FUNCTION that takes in a number
// 		For as many times as the number given, ask for a string.
//		Store the strings created into an ARRAY
//		Pass the ARRAY in as an argument to the longestPhrase FUNCTION
// Write a FUNCTION that creates a word of a random length (from 1 - 10 characters long)
// 		Define a random number for the length of the word
// 		Define a empty word
// 		Define the letters which may be used (the alphabet)
// 		FOR as many times as the random number, select a letter
//		Add that letter to the word string
//		Return the word

function makeArray(number) {
	var wordArray = [];
	for (var x = 0; x < number; x++) {
		wordArray.push(makeWord());
	};
	return wordArray;
};

// 	I had to look up a way of selecting a random number / letter
//  Math is a preexisting object which has some functions already written
//  One of the preexisting functions is Math.random
		// Math.random will return a random number, but that number is a random decimal from 0 to 1.
		// In order to get a random whole number from 1 - 10 we need to use another MATH function
		// It is possible to use the function Math.ceil or Math.floor to round numbers to the nearest whole number above or below a decimal
		// We can use the functions Math.random and Math.floor together to return a random number between 0 and 10
		// In order to get a number between 1 and 10, since we are rounding down with Math.floor, we must add 1.

function makeWord() {
	var randomNumber = Math.floor(Math.random() * 10) + 1;
	word = "";
	var characters = "abcdefghijklmnopqrstuvwxyz";
	for (var y = 0; y < randomNumber; y++) {
			word += characters.charAt(Math.floor(Math.random() * characters.length));
	};
	return word
}

console.log(makeArray(3));
console.log(longestPhrase(makeArray(4)));
