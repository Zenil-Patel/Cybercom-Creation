async function statement() {
    let one = new Promise((resolve, reject) => {
        setTimeout(() => {
            console.log("Output from one")
        }, 5000);
    })
    let two = new Promise((resolve, reject) => {
        setTimeout(() => {
            console.log("Output from two")
        }, 10000);
    })
    let three = new Promise((resolve, reject) => {
        setTimeout(() => {
            console.log("Output from third")
        }, 15000);
    })

    let oneWait = await one
    let twoWait = await two
    let threeWait = await three
    return oneWait, twoWait, threeWait;
}
statement().then((value) => {
    console.log(value);
})

