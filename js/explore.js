/* 
pseudocode a function
method: reverse a string (e.g. "hello" -> "olleh")
input: string 
steps:
  #get a value for the string parameter
  #use the length of the string to get each letter from the string
    #set a parameter as a length of the string
    #subtract 1 (since string index starts from 0)
    #the parameter of the string length should be more than 0
    #subtract 1 from the length parameter
  #create a new string parameter with no value 
  #add each letter of the string parameter to the new string parameter
output: reversed string
*/

function reverse(str) {
  var newstring = "";
  for (var i = str.length -1; i >=0; i--) {
    newstring += str[i];
  }
  
  return newstring;
}

console.log(reverse("morning!"));

var variable = reverse("morning!");
var feelgood = true;
var morning = true;

if (feelgood && morning) {
  console.log(variable);
}

