console.log("This is our JS!");
var myDiv = document.getElementsByTagName('div');

for(var i = 0; i < myDiv.length; i++) {
  myDiv[i].style.backgroundColor = "red";
}

var enlarge = function(event){
  console.log('click happened!');
  console.log("Here's what happened:")
  console.log(event);
  event.target.style.fontSize="5em";
}

for(var i = 0; i < myDiv.length; i++) {
  myDiv[i].addEventListener('click', enlarge);
}
