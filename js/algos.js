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

// PSEUDOCODE
// Write a FUNCTION that takes in two objects
//    FOR each KEY , evaluate if both objects have the same KEY
//      IF the two objects have the same KEY and VALUE, is true
//      otherwise remains false

function sharesPairs(object1, object2) {
	var sharesKeys = false
	for (var k in object1) {
		if (object1[k] == object2[k]) {
			sharesKeys = true
		}
	}
	return sharesKeys
}

// DRIVER CODE
var people = sharesPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(people);
var places = sharesPairs({grass: "green", location: "other side"}, {city: "San Francisco", year: 2016});
console.log(places)
var cities = sharesPairs({name: "Paris", country: "France"}, {city: "Vernon", region: "France"});
console.log(cities)
var dogs = sharesPairs({name: "Surely", age: 7}, {age: 7, name: "Spot"});
console.log(dogs)
