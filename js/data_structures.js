var names = ["Ed", "Max", "Buster", "bob"];
var colors = ["blue", "red", "green", "white"];


console.log(colors.push("black"))

colors.push("black")
console.log(colors)

names.push("John")
console.log(names)

var name_color = {}
for (i = 0; i < names.length; i ++) {
name_color[names[i]] = colors[i];
}

console.log(name_color)

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;
  if (this.year < 2015) {
  console.log("You have an old car!")}
  else {
  console.log("Nice car!");
}
}


car1 = new Car("Honda", "Civic", "2014")
console.log("You have a " + car1.model + " made by " + car1.make + " in " + car1.year)

car2 = new Car("Toyota", "Prius", "2016")
console.log("You have a " + car2.model + " made by " + car2.make + " in " + car2.year)
car2.zoom = function() {
  console.log("zoom");
};

car2.zoom();
console.log(car2)


