
//Find the longest phrase
 // write a function that takes an array of words or phrases
 // create an array which has different lengths of words
 // using the length of the words, print the longest word in the array 

var phrases = ["long phrase","longest phrase","longer phrase"];
var longest_word = 0;

function find_longest(array) {
  for(var i=0; i< array.length; i++) {
    if (array[i].length > longest_word) {
      longest_word = array[i].length;
    }
  }
  return array[i]
}

console.log(find_longest(phrases));



//Find a key-value match
  //create a function that takes two hashes
    // IF there is a match of value of keys, it will return true
    //IF not (ELSE), it returns false.
  //create hashes for driver code 
  //print the return value


function value_match(hash1, hash2) 
  if ((hash1.name == hash2.name) || (hash1.age == hash2.age)) {
    return true;
  }
  else {
    return false;
  }
}

var hash1 = {name: "David", age: 34};
var hash2 = {name: "James", age: 34};
console.log(value_match(hash1,hash2));
var hash3 = {name: "David", age: 21};
var hash4 = {name: "James", age: 34};
console.log(value_match(hash3,hash4));


//Generate random test data
  //write a function that takes an integer for length 
  //it returns an array of string of the given length 
  //each string should be of randomly varying length form 1 to 10 
  //add driver code that does the following 10 times: 
    //generate an array, use longest function, and print the result

function makeid(n)
{
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    for( var i=0; i < n; i++ ) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));}
    return text;
}

function random_data(integer) {
  var array = [];
  for (i=0;i < integer; i++) {
    var randomNum = Math.floor((Math.random() * 10)+1);
    array.push(makeid(randomNum));
  }
  return array
}
console.log(random_data(3));
console.log(find_longest(random_data(3)));

