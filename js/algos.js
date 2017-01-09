/*
Function takes an array of strings and returns the longest word or phrase:
Iterate through the array with a for loop
Check to see if each item is bigger (longer) than the next one with another for loop
Store longest so far in a variable
if the next item is not longer, set current item as longest
if next item is longer, continue iterating
	*/


function longestPhrase(array){
  len = array.length;
  var longest ="";
  var i = 0;
  while (i < len - 1){
    var longestSoFar = array[i+1];
    if(array[i].length > longestSoFar.length){
      longest = array[i];  
    }
    i+=2;
  }
  if (longest.length < array[len-1].length){
    longest = array[len-1];
  } 
  console.log(longest);
}

/*
Function that takes two objects and checks to see if they share at least one key-value pair
ex. {name: "Steven", age: 54} and {name: "Tamir", age: 54} returns true
Iterate through keys and check if keys match
Then, if keys to match: check if values match
*/
function matchingKeyVal(obj1, obj2){

  for(var i in obj1) {
    var result;
    if (obj1[i] === obj2[i]){ //Check if key-value is a match. If values are the same but keys are different, key in obj2 in undefined
      result = true;
    }
    else{
      result = false; //false if keys match, but none of the values of those keys match
    }
   }
   console.log(result);
}

/*
Function that takes an integer n for length and builds an array of n length of strings
These strings are of randomly varying length, of 1 to 10 characters
Set an alphabet variable for strings
Set an empty array to fill
Use a for loop to count up to integer n
Use Math.random for length of strings and for contents of string (getting a random start letter index from alpha
and the random length value from Math.random of string length)
push each string to array
print array
*/

function randomArrayOfStrings(n){
  var randArray = [];
  var alpha = "qwertyuiopasdfghjklzxcvbnm";

  for(var i=0; i <n; i++){
    var start_alpha = Math.floor(Math.random() * (Math.floor(25) - Math.ceil(0) + 1)) + 1; //Put these in here so each string length is different through each iteration
    var str_length = Math.floor(Math.random() * (Math.floor(10) - Math.ceil(1) + 1)) + 1;
    randArray.push(alpha.substr(start_alpha,str_length));
  }
  console.log(str_length);
  console.log(randArray);
}






longestPhrase(["long phrase","longest phrase","longlonglonglonglonglonglonglong","longer phrase","even longer phrase"]);
longestPhrase(["Dionne and I were both named after great singers of the past who now do infomercials","Isn't my house classic? The columns date all the way back to 1972","And my buns, they don't feel nothing like steel","Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose"]);

// console.log("Dionne and I were both named after great singers of the past who now do infomercials".length);
// console.log("Isn't my house classic? The columns date all the way back to 1972".length);
// console.log("And my buns, they don't feel nothing like steel".length);
// console.log("Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose".length;

console.log("Should be true:");
matchingKeyVal({name: "Steven", age: 54},{name: "Steven", age: 50});
console.log("Should be false:");
matchingKeyVal({name: "Steven", age: 54},{surname: "Steven", age: 50});
console.log("Should be true:");
matchingKeyVal({name: "Steven", age: 54},{name: "Tamir", age: 54});
console.log("Should be false:")
matchingKeyVal({name: "Steven", age: 54},{name: "Steven", number: 54});









