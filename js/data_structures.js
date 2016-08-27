var colors = ["yellow", "green", "pink", "blue"];

var names = ["Sally", "George", "Phelix", "Ed"];



var horses = {};


for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
  }

console.log(horses);

// create constructor function

function Car(type, color, speed) {
  console.log("Brand New Car:", this);

  this.type = type;
  this.color = color;
  this.speed = speed;

  this.drive = function() {console.log("Vroom vroom!!!"); };

  console.log("Car initialization complete");

}

var newCar = new Car("mini van", "blue", "slow");
console.log(newCar);
newCar.drive()

var newCar2 = new Car("convertible", "red", "fast");
console.log(newCar2);
newCar2.drive()

var newCar3 = new Car("dumptruck", "orange", "5mph")
console.log(newCar3);
newCar3.drive()