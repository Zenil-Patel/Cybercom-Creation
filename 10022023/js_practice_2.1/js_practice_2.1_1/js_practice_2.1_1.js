//1. Create a function that returns Boolean - whether a passed string is Palindrome or not.

function isPallindrone(str) {
    // debugger;
    let a = Math.ceil(str.length/2);
    // console.log(a);
    for( let i=0; i< a; i++){
        if(i==(str.length-1)) break;
        if(str[i]!==str[str.length-i-1]){
            return false;
        }
    }
    return true;
}

function reverseString(str) {
    let a = str.split("");
    let b = a.reverse();
    return b.join("");
}

console.log(isPallindrone("1234321"))