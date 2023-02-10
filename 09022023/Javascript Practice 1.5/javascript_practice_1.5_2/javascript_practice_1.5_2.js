let nums = [3,2,-4,-1];
let target = -4;
let tempArr = [];
let sum=0;
let diffArr=[];

for(i=0; i<nums.length-2; i++){
    for(j=i+1; j<nums.length-1; j++){
        for(k=j+1; k<nums.length; k++){
            sum = (nums[i]+nums[j]+nums[k]);
            tempArr.push([nums[i],nums[j],nums[k]]);
            diffArr.push(sum-target);
        }
    }
}
// console.log();

let index_min = diffArr.indexOf(Math.min.apply(Math, diffArr));
console.log("The sum that is closet to target ("+target+") is ["+ tempArr[index_min] + "].");