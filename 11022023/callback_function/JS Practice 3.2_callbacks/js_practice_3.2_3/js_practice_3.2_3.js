function one(cbFunc){
    setTimeout(() => {
        console.log("First function is executed")
        cbFunc(three);
        console.log("Second function is started executing")
    }, 10000);
}
function two(cbFunc){
    setTimeout(() => {
        console.log('Second function is executed')
        cbFunc();
        console.log("Third function is started executing")
    }, 10000);
}
function three(){
    setTimeout(() => {
    console.log("Third function is executed")
    }, 8000);
}
console.log("First function is started executing")
one (two);