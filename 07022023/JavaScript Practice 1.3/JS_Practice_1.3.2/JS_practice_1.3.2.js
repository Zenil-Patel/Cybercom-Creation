var arr = ["abcd", "xyz", "a","cybercom","z", "jndfhebfiew"];
maxLength = arr[0].length;
for (i=0; i<arr.length;i++){
    if(arr[i].length>maxLength){
        maxLength=i;
    }
}
console.log(arr[maxLength]);
