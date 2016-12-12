/*

* Find the Longest Phrase
* create a new variable that has an example array
* create a function that returns the longest word in the array
* print the value of the function
*/

var longWords = ["long phrase","longest phrase","longer phrase"];
var sorted = longWords.sort(function (a, b) { return b.length - a.length });

console.log(sorted[0]);