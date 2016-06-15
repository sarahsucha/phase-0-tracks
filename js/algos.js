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
