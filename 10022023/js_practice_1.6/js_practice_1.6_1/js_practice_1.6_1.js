let nums = [1, 2, 3];
let powerSet = [[]];
console.log(powerSet.length);
// for (let i=0; i<nums.length; i++){
//     for( let j=0, l=powerSet.length; j<l; j++){
//         powerSet.push(powerSet[j].concat(nums[i]));
//     }
// }

//little changes
// for (let i=0; i<nums.length; i++){
//     for( let j=0; j<powerSet.length; j++){
//         powerSet.push(powerSet[j].concat(nums[i]));
//     }
// }
// console.log(powerSet);



for (let i=0; i<nums.length; i++){
    for( let j=0, l=powerSet.length; j<l; j++){
        powerSet.push(powerSet[j].concat(nums[i]));
    }
}
console.log(powerSet);