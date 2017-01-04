/*
use a for loop to start at the end of the string and add each letter before it to the end of it
so, if the string is "hello", start at the end of the string with 'o', and then add the 'l'
and so on with concatenation. Assign the reversed string to a new variable*/

function reverseString(string) {
	var len= string.length -1;
	var answerString = "";
	for(var i = len; i >=0; i--){
		answerString += string[i];
	}
	return answerString
}

var revPup = reverseString("puppy")


if ((12/4) == (9/3)) {
	console.log(revPup + " is puppy backwards")
}
