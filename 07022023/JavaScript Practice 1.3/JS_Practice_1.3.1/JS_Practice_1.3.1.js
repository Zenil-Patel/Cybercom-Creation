var num = [3,5,2,62,26,1];
var sum =0;
for (i=0; i<num.length; i++){
    sum += num[i];
}
console.log("Sum= "+sum);

var avg = sum/num.length;
console.log("Average= "+avg);
min = num[0];
for(i=0; i<num.length;i++){
    if(num[i]<min){
        min=num[i];
    }
}
console.log("Min: "+min);
max = num[0];
for(i=0; i<num.length;i++){
    if(num[i]>max){
        max=num[i];
    }
}
console.log("Max: "+max);