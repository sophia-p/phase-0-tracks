/*
Function takes an array of strings and returns the longest word or phrase:
Iterate through the array with a for loop
Check to see if each item is bigger (longer) than the next one with another for loop
Store longest so far in a variable
if the next item is not longer, set current item as longest
if next item is longer, continue iterating
	*/


function longestPhrase(array){  //Still doesn't always work, but doesn't use built-in methods
  var len = array.length;
  var longest ="";
  var ans = "";
  var i = 0;
  while (i < len - 1){
    var longestSoFar = array[i+1];
    if(array[i].length > longestSoFar.length){
      longest = array[i];  
    }
    i+=1;
  }
  if ((array[len-1].length) > longest.length){
    ans = array[len-1];
  } else if ((array[0].length) > longest.length){
    ans = array[0];
  } else {
    ans = longest;
  }
  return ans;
  
}

function maxPhrase(array){  //uses Math.max
  var arrayOfLength =[]
  for(var i=0; i<array.length; i++){
    arrayOfLength.push(array[i].length);
  }
  var maxLen = Math.max(...arrayOfLength);
  var indOfMax = arrayOfLength.indexOf(maxLen);
  var ans = array[indOfMax];
  return ans;
}

/*
Function that takes two objects and checks to see if they share at least one key-value pair
ex. {name: "Steven", age: 54} and {name: "Tamir", age: 54} returns true
Iterate through keys and check if keys match
Then, if keys to match: check if values match
  Push values of each pair to their own array
  Use a loop to compare values to see if they are the same while at the same index as each other
*/
function matchingKeyVal(obj1,obj2){
  var obj1Array=[];
  var obj2Array = [];
  var result;
  for(var i in obj1){
    obj1Array.push(obj1[i]); //if key in obj1 doesn't exist in obj2, value will be undefined
    obj2Array.push(obj2[i]);
  }
 for(var j=0; j<obj1Array.length; j++){
   if (obj1Array[j] === obj2Array[j]){
     result = true;
   } else {
     result = false;
   }
   j ++;
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
    var start_alpha = Math.floor(Math.random() * (Math.floor(25) - Math.ceil(1) + 1)) + 1; //Put these in here so each string length is different through each iteration
    var str_length = Math.floor(Math.random() * (Math.floor(10) - Math.ceil(1) + 1)) + 1;
    randArray.push(alpha.substr(start_alpha,str_length));
  }
  return randArray;
}






longestPhrase(["long phrase","longest phrase","longlonglonglonglonglonglonglong","longer phrase","even longer phrase"]);
longestPhrase(["Dionne and I were both named after great singers of the past who now do infomercials","Isn't my house classic? The columns date all the way back to 1972","And my buns, they don't feel nothing like steel","Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose"]);


maxPhrase(["long phrase","longest phrase","longlonglonglonglonglonglonglong","longer phrase","even longer phrase"]);
maxPhrase(["Dionne and I were both named after great singers of the past who now do infomercials","Isn't my house classic? The columns date all the way back to 1972","And my buns, they don't feel nothing like steel","Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose"]);

// console.log("Dionne and I were both named after great singers of the past who now do infomercials".length);
// console.log("Isn't my house classic? The columns date all the way back to 1972".length);
// console.log("And my buns, they don't feel nothing like steel".length);
// console.log("Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose".length;

console.log("Should be true:");
matchingKeyVal({name: "Steven", age: 54},{name: "Steven", age: 50});
console.log("Should be false:");
matchingKeyVal({name: "Steven", age: 54},{surname: "Steven", age: 50});
console.log("Should be false:");
matchingKeyVal({name: "Steven", age: 54},{name: "Tamir", age: 54});
console.log("Should be true:")
matchingKeyVal({name: "Steven", age: 54},{name: "Steven", number: 54});


/*
Do 10 times: generate an array, print array, feed array to longest string function, prints that result
loop from 1 to 10
*/
for(var i = 1; i<=10; i ++){
  array_length = Math.floor(Math.random() * (Math.floor(6) - Math.ceil(3) + 1)) + 1;
  randArray = randomArrayOfStrings(array_length);
  console.log(randArray);
  longStr = maxPhrase(randArray);
  console.log(longStr);
}










