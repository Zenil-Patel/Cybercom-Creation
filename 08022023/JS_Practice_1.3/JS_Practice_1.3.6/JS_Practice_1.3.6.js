let arr = ["abc", "bcd", "efg", "xyz", "cde", "mno"];
console.log(arr);
arr.sort(function(a,b){
    if(a<b){
        return -1;
    }
    if(a>b){
        return 1;
    }
    return 0;
});
console.log("Sorted array (Alphabetically!!)");
console.log(arr);