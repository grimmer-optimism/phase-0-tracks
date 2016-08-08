// Function that takes an array as an argument and returns the longest string
// Initialize a new variable to store strings
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
