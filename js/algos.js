
//Find the longest phrase
 // write a function that takes an array of words or phrases
 // create an array which has different lengths of words
 // using the length of the words, print the longest word in the array 









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


