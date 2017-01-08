/*
Function takes an array of strings and returns the longest word or phrase:
Iterate through the array with a for loop
Check to see if each item is bigger (longer) than the next one with another for loop
Store longest so far in a variable
if the next item is not longer, set current item as longest
if next item is longer, continue iterating
	*/



function longestPhrase(array){
  
  var longest = "";
  for(var i = 0; i <array.length; i ++){
    for(var j = 1; j<array.length; j++){
      if(array[i].length > array[j].length){
        longest = array[i];
      }
    }
  }
  console.log(longest);
}

longestPhrase(["long phrase","longest phrase","longlonglonglonglonglonglonglong","longer phrase","even longer phrase"])
longestPhrase(["Dionne and I were both named after great singers of the past who now do infomercials","Isn't my house classic? The columns date all the way back to 1972","And my buns, they don't feel nothing like steel","Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose"])

console.log("Dionne and I were both named after great singers of the past who now do infomercials".length)
console.log("Isn't my house classic? The columns date all the way back to 1972".length)
console.log("And my buns, they don't feel nothing like steel".length)
console.log("Ms. Stoeger, my plastic surgeon doesn't want me doing any activity where balls fly at my nose".length)