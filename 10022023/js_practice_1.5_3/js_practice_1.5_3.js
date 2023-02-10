nums = [7, 8, 9, 11, 12];
let count=1;
for (let i=0; i<nums.length; i++){
    if(count==nums[i]){
        count++;
    }
}
console.log(count);