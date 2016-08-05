// Create a function named 'reverse' that takes a string and
// splits the string into individual components creating an array and gaining access to array functions.
// Found reverse function for arrays on MDN, but this doesn't bring the components back together
// Concatate the array into a string for the final finalanswer
// No implicit return so need to return answer

function reverse(string) {
	var splitarray = string.split("");

	var seperatedreverse = splitarray.reverse();

	var finalanswer = seperatedreverse.join("");

	return finalanswer;
}

reverse("hello");

var success = reverse("hello")

if (1==1) {
	return success;
}
