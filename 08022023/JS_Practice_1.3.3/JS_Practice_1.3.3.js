var info = [{
    fname: "B", age: 21
},
{
    fname: "A", age: 22
},
{
    fname: "C", age: 20
},
{
    fname: "D", age: 19
}
];

document.write("3. Create an array of objects and write code to sort the objects based on a specific property (e.g., name, age, etc.)<br>");

console.log(info);

for (i = 0; i < info.length; i++) {
    document.write("Name: " + info[i].fname + " ");
    document.write("Age: " + info[i].age + "<br>");
}

function sortByName() {
    info.sort(function(a,b){
        if(a.fname<b.fname){
            return -1;
        }
        if(a.fname>b.fname){
            return 1;
        }
        return 0;
    });
    console.log(info);
    document.getElementById("display").innerHTML = "Sorted values are printed in console.";
}
console.log(info.length);
function sortByAge(){
    var temp=0;
    for (i=0; i<info.length-1;i++){
        for(j=i+1; j<info.length;j++){
            if(info[i].age > info[j].age){
                temp = info[i];
                info[i] = info[j];
                info[j] = temp;
            }
        }
    }
    console.log(info); 
    document.getElementById("display").innerHTML = "Sorted values are printed in console.";    
}