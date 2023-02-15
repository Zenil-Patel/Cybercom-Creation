let first = new Promise((resolve, reject) => {
    error = false;
    if(!error)
    {
        setTimeout(() => {
            resolve("Output from one")
        }, 10000);
    }
    else{
        reject("There's some issue.")
    }
});



first.then((value) => {
    console.log(value)
    let second = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Output from one")
        }, 10000);
    });
    return second
}).then((value) => {
    console.log("Output from two")
    let third = new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Output from three")
        }, 8000);
    });
    return third
}).then((value) => {
    console.log(value)
});