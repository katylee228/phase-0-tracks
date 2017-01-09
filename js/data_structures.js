// I worked with Eddie for this pairing. 
//I was a navigator and he was a driver. He committed every release.

var colors = ["blue", "green", "red", "yellow"];
var names = ["James", "Seabiscuit", "Flicka", "Shadowfox"];

colors.push("black");
names.push("Felitz");

var horses = {};
for (i = 0; i < names.length; i++){
  horses[names[i]]=colors[i];
}

console.log(horses)


function Cars(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;
  if (this.year <2013){
    console.log("You have an old car.");
  }
  else {console.log("You have a new car.");}
}

var anotherCar = new Cars("Honda", "Civic", 2014);
console.log("You have a " + anotherCar.model + " made by " +anotherCar.make + "in " + anotherCar.year);
var otherCar = new Cars("Toyota", "Prius", 2000);
console.log("You have a " + otherCar.model + " made by " +otherCar.make + "in " + otherCar.year);

otherCar.honk = function(){console.log("Honk Honk!")};
otherCar.honk();