/*
pseudo code for reverse function
*create a function that reverses the order of words
  *should take a string parameter
  *use the length and index of the word to print from the last letter to the first letter
    *loop should be used
*print the reversed value
*/

function reverse(string) {
  var new_str = "";
  for (var i = string.length -1; i >= 0; i --) {
    new_str += string[i];
  }
  return new_str;
}

console.log(reverse("hello!"));


if (1 == 1) {
  console.log(reverse("great day!"));
}
