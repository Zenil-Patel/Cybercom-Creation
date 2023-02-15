let nums = [1, 2, 3];
let powerSet = [[]];
// debugger;
for (let i=0; i<nums.length; i++){
    for( let j=0, l=powerSet.length; j<l; j++){
        powerSet.push(powerSet[j].concat(nums[i]));
    }
}
console.log(powerSet);