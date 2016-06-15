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

var phrases = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(phrases)
var newPhrases = longestPhrase(["JavaScript", "Ruby", "Node", "MySQL"]);
console.log(newPhrases)

// PSEUDOCODE
// Write a FUNCTION that takes in two objects
// For each KEY and VALUE, evaluate if both objects have the same KEY and VALUE
// IF the two objects have the same KEY and VALUE, is true
// ELSE is false

function sharesPairs(object1, object2) {
	var sharesKeys = false
	for (var k in object1) {
		if (object1[k] == object2[k]) {
			sharesKeys = true
		}
	}
	return sharesKeys
}

var people = sharesPairs({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(people);
var places = sharesPairs({grass: "green", location: "other side"}, {city: "San Francisco", year: 2016});
console.log(places)
var cities = sharesPairs({name: "Paris", country: "France"}, {city: "Vernon", region: "France"});
console.log(cities)
