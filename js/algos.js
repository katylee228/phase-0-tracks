/*

* Find the Longest Phrase
* create a new variable that has an example array
* create a function that returns the longest word in the array
* print the value of the function
*/

var longWords = ["long phrase","longest phrase","longer phrase"];
var sorted = longWords.sort(function (a, b) { return b.length - a.length });

console.log(sorted[0]);

/*
* create a function which requires two parameters(hash) to see if they have same values
* use if statement 
* create a variable that is a hash which hasa two keys and values
* returns true when they have at least one same value 

*/

function check(hash1, hash2) {
  if (hash1.name == hash2.name) {
    return true;
  }
  else if (hash1.age == hash2.age) {
    return true;
  }
  else {
  return false;
}
}

var hash1 = {name: "Steven", age: 54};
var hash2 = {name: "Tamir", age: 54};
console.log(check(hash1, hash2));
var hash3 = {name: "David", age: 34};
var hash4 = {name: "Katy", age: 45};
console.log(check(hash3, hash4));



var randomNum = Math.floor((Math.random() * 10)+1);
function randomWholeNum() {
  return Math.random();
}
function makeid(n)
{
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    for( var i=0; i < n; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}
console.log(makeid(randomNum));











