var arr1 = [4,36,4,7,2,15,55,1,36,2,2,15,4];
console.log(arr1);

//Sorting an Array
var temp=0;
    for (i=0; i<arr1.length-1;i++){
        for(j=i+1; j<arr1.length;j++){
            if(arr1[i] > arr1[j]){
                temp = arr1[i];
                arr1[i] = arr1[j];
                arr1[j] = temp;
            }
        }
    }

console.log("Sorted array: ");
console.log(arr1);
var arr2 = [];

//Removing an array
// debugger;
for(i=0; i<arr1.length; i++){
    if(arr1[i]!=arr1[i+1]){
        arr2.push(arr1[i]);
    }
}

console.log("Removed duplicates!!")
console.log(arr2);