function calculateBMI(){
var mass = document.getElementById("mass").value;
var height = document.getElementById("height").value;

document.getElementById("display").innerHTML = mass/(height*height);
console.log( mass/(height*height));

}
// var a = 50;
// var b = 1.3;
// var c = a/(b*b);
// console.log(c);
