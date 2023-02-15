function boilWater(cbFunc) {
    setTimeout(() => {
        console.log("Water boiled!! (Took 5 sec)");
        console.log("Tea leaves added")
        cbFunc(addMilk);
    }, 5000);
}
function boilTeaLeaves(cbFunc) {
    setTimeout (() => {
        console.log("Tea Leaves boiled!! (Took 2 sec)");
        cbFunc();
    }, 2000);
}
function addMilk() {
    console.log("Milk Added!!")
}

console.log("Water started boiling")
boilWater(boilTeaLeaves);