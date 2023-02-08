var height = [1,8,6,2,5,4,8,3,7];
var minHeight = 0;
var distance = 0;
var amount = [];
var max = 0;
for(i=0 ; i<height.length-1; i++){
    for(j=i+1 ; j<height.length ; j++){
        if(height[i]<height[j]){
            minHeight = height[i];
        }
        else{
            minHeight = height[j];
        }
        distance = j-i;
        if(max<(minHeight*distance)){
            max = (minHeight*distance);
        }
    }
}
console.log("Maximum amount of water a container can store is "+max);
