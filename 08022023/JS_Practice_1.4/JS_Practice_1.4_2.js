// const ogStr = "<html><head></head></html>"
const ogStr = "<html><head></head><body></boy></html>"
let str = ogStr;
let arr = [];
console.log(str);

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

let arr1 = [];

for (i = 0; i < arr.length; i++) {
    if (arr[i]) {
        arr1.push(arr[i]);
    }
}
console.log(arr1);

arr2 = [];
for (i = 0; i < arr1.length; i++) {
    if (arr1[i][0] == "/") {
        if (arr1[i].slice(1, ) == arr2.slice(-1)) { arr2.pop() }
        else { console.log("Invalid"); break; }
    }
    else {
        arr2.push(arr1[i]);
    }
}
console.log(arr2);
if (arr2.length == 0) {
    console.log("Valid");
}


