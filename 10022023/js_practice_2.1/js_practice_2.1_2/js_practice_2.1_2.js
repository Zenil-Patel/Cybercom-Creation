//2. Write a JavaScript function that returns array elements larger than a number, Array input should be dynamic.
function greaterThanArray(array, num){
    let tempArr = [];
    for ( let i = 0 ; i<array.length; i++){
        if(array[i]>num){
            tempArr.push(array[i]);
        }
    }
    return tempArr;
}
let mainArr = [2,4,4,1,0,3];
let number = 3;
console.log(greaterThanArray(mainArr, number));