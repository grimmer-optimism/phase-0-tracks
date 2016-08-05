var colors = ["blue", "silver", "black", "purple"];

var names = ["Ed", "Bucky", "Dad", "Rudi"];

colors.push("green");
names.push("Charley");

console.log(names);
console.log(colors);

// Use two arrays to create an object.

// Key of object = horse names with color values
// Key, value --> names, colors


var horses = {};

  for (var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}


console.log(horses);

//2 properties and 1 function

function Car(color, model, isNew) {
  this.color = color;
  this.model = model;
  this.isNew = isNew;

  this.honk = function() {console.log("HOOOONNNNNKKKK"); };

}

// console.log("The dog's name is " + dog['name'] + ".");

var ford = new Car("blue", "F-150", false);
console.log(ford);

ford.honk()

for (var i = 0; i < Car.length; i++) {
  console.log("The car's color is " + ford['color'] + ", the model is " + ford['model'] + "it is new" + ford['isNew'] + ".");
}
