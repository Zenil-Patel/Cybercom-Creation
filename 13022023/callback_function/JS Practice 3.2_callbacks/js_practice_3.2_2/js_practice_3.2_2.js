function one(cbFunc){
    setTimeout(() => {
        cbFunc(third);
        console.log("Output from one")
    }, 5000);
}
function two(cbFunc){
    setTimeout(() => {
        cbFunc();
        console.log("Output from two")
    }, 10000);
}
function third(){
    setTimeout(() => {
console.log("Output from three")
    }, 15000);
}

one(two);