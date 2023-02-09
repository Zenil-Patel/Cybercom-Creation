// const ogStr = "<html><head></head></html>"
// const ogStr = "<html><head></head><body></boy></html>"
// const ogStr = "<html><br><head></head></html>"

const ogStr = "<html><head><p>This is a para</p></head></html>"

let str = ogStr;
let arr = [];
exceptionArr = ["br", "hr", "img", "input"];
console.log(str);

//Extracting the content of string betn "<"" and ">"
let indexOf_lesser = 0;
let indexOf_greater = 0;
// debugger;
for (i = 0; i < str.length; i++) {
    if (str[i] == "<") {
        indexOf_lesser = i;
        indexOf_lesser++;
    }
    if (str[i] == ">") {
        indexOf_greater = i;
    }
    if (indexOf_lesser != 0 && indexOf_greater != 0) {

        let substr = str.slice(indexOf_lesser, indexOf_greater);
        arr.push(substr);
    }
}
console.log(arr);

let arr_dup = [];
for (i = 0; i < arr.length; i++) {
    if (arr[i]) {
        arr_dup.push(arr[i]);
    }
}
console.log(arr_dup);

//Remove all the duplicates of arr_dup by converting into set 
let set = new Set(arr_dup);
//Convert srt to array
arr1 = Array.from(set);

console.log(arr1);
// debugger;

//Will remove the elements which are in exceptionArr
arr1_excep = [];
for (i = 0; i < arr1.length; i++) {
    let addEle = 1;
    for (j = 0; j < exceptionArr.length; j++) {
        if (arr1[i] == exceptionArr[j]) {
            addEle = 0;
            break;
        }
    }
    if (addEle != 0) {
        arr1_excep.push(arr1[i]);
    }
}

console.log(arr1_excep);

//To check whether the opening element has its corresponding closing tag
arr2 = [];
for (i = 0; i < arr1_excep.length; i++) {
    if (arr1_excep[i][0] == "/") {
        if (arr1_excep[i].slice(1,) == arr2.slice(-1)) { arr2.pop() }
        else { console.log("Invalid"); break; }
    }
    else {
        arr2.push(arr1_excep[i]);
    }
}
console.log(arr2);
if (arr2.length == 0) {
    console.log("Valid");
}



