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
