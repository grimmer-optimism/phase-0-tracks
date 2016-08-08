// Function that takes a single argument of an array and returns the longest string
// Initialize a new variable longest_so_far to store strings
// For loop to determine length of each string and store it
// if the current array is longer than the previously stored value overwrite it
// if the current string is shorter than stored value expression evaluate to false
// and return the existing string

function return_longest_string(array) {
  var longest_so_far = "";

  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest_so_far.length) {
      longest_so_far = array[i]
    }
  }
  return longest_so_far;
}

// Test code for release 0

var longest_phrase = ["Chocolate", "This is the best sentence ever", "Go Pack Go!"]
console.log(return_longest_string(longest_phrase))

// Function equal_objects takes two objects as its argument and
// checks to see if the objects share a key-value pair
//  loop through first object creating a variable of each object
// use == function to see if there is a match in object 2
// if match found print true otherwise false
function equal_objects(object1, object2) {
  for (var i in object1) {
    if ( object1[i] == object2[i]) {
      return true;
    }
  }
  return false;
}

// Test code for release 1
//return true
console.log(equal_objects({name: "Steven", age: 54}, {name: "Tamir", age:54}))
// return false
console.log(equal_objects({name: "Matt", age: 28}, {name: "Erin", age: 26}))


// 1 function to generate random words and another to build the new array of length determined by argument
// create alphabet variable to use with random math function
// create variable new_word to hold future string
// for loop to create new string of length determined by the argument (number) provided
// return the new word

// Second function that calls on the first method to generate a new word
// create empty array called new_array
// for loop to iterate through until quota met which is set by argument
// push the new word into our new_array variable


//Running out of time, but would refactor to put in rules for 1 through 10 min max
// If I made a user interface it would prompt the user to enter a number 1 through 10 for new string length
function wordGenerator(number) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var new_word = "";

  for (var i = 0; i < number; i++) {
    new_word += alphabet[Math.floor(Math.random()*alphabet.length)];
  }
  return new_word;
}

function arrayGenerator(integer) {
  var new_array = [];
  for (var i = 0; i < integer; i++) {
    new_array.push(wordGenerator(Math.ceil(Math.random()*10)));
  }
  return new_array
}

//Test code for release 2
for (var i = 0; i < 10; i++) {
  console.log(return_longest_string(arrayGenerator(3)));
}
