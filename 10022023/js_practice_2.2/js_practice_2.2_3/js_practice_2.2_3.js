// Create a function that returns the array of each letter passed as string via argument.
//Method 1
function toArray_1(str){
    return str.split("");
}
//Method 2
function toArray_2(str){
    var tempArr = [];
    for (i=0; i<str.length; i++){
        tempArr.push(str[i]);
    }
    return tempArr;
}

console.log(toArray_1("abc"));
console.log(toArray_2("abc"));
