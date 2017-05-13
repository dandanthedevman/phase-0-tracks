var colors = ["blue", "green", "red", "purple"];

var horse = ["jeff", "ted", "first", "last"];

horse.push("josh");

colors.push("gold");



var horses = {};

function toObject(names, values) {
  var result = {};
  for (var i = 0; i < names.length; i++)
       result[names[i]] = values[i];
  return result;
}

console.log(toObject(horse, colors));

function Car(color, type, fast) {
  this.color = color;
  this.type = type; 
  this.fast = fast; 
  this.burnout = function() {console.log("burning rubber!!!"); }; 

}


var coolcar = new Car("red", "sports", true);

console.log(coolcar);
coolcar.burnout();


var sedan = new Car("grey", "sedan", false);

console.log(sedan);
console.log("this car is lame because its a " + sedan.color + " " + sedan.type +".");


var truck = new Car("yellow", "truck", false);

console.log(truck);
truck.fast = true;
console.log("is this truck fast?:" + " " + truck.fast )

for (var i = 0; i < 20; i++)
	    console.log(new Car("red", "sports", true));