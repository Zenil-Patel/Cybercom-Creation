console.log("Code is valid only for 3 digits.")
let code = '123';
let uniqueCode = code.split("");
let tempArr = [];
let secondaryArr = [];
if(code==0){ 
    console.log("Found value = 0"); 
}else{

//Copied uniqueCode array in tempArr
tempArr = [].concat(uniqueCode);


for(let i=0; i<tempArr.length-1; i++){
    let temp = [].concat(tempArr)

    temp.splice(i,2, tempArr[i]+tempArr[i+1]);
    let re0 = parseInt(tempArr[i]);
    let re26 = parseInt(tempArr[i]+tempArr[i+1]);
    //Add the values which are below 26 and above 0
    if(re0>0 && re26 <= 26){
        secondaryArr.push(temp);
    }
}
secondaryArr.push(uniqueCode);
console.log(secondaryArr);

}
