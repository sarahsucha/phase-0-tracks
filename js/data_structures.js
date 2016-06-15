// Paired with Jason Pelletier
// RELEASE 0 & 1

var colors = ["red", "orange", "yellow", "green"];
var horseNames = ["Ed", "Roger", "Trixy", "Black Beauty"];

colors.push("blue");
horseNames.push("Silver");

console.log(colors);
console.log(horseNames);

function createHorse(colorArray, namesArray) {
  var horses = {};
  for (var i = 0; i < colors.length; i++) {
    horses[horseNames[i]] = colors[i];
  }
  return horses;
};

console.log(createHorse(colors, horseNames));

// RELEASE 2

function Car(make, model, color, year) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.year = year;

  this.startEngine = function() {
    console.log("VARROOOOOOOM!!");
  }
}

var oldCar = new Car("Nissan", "Stanza", "Grey", 1987);
console.log(oldCar);
oldCar.startEngine();
var newCar = new Car("Nissan", "Altima", "Black", 2013);
console.log(newCar);
newCar.startEngine();

// If we wanted to print out the property / value pairs for each car we could save the cars to an array and then loop through the array to print out each car.
for (var p in oldCar) {
  console.log("The property is " + p + " and the value is " + oldCar[p]);
}
