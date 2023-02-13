function first(cbFunc){
    setTimeout(() => {
        console.log("First func executed!! (Took 10s)")
        console.log("Second func is executing!!")
        cbFunc(third);
    }, 10000); 
}
function second(cbFunc){
    setTimeout(()=>{
        console.log('Second func executed!! (Took 10s)')
        console.log("Third func is executing!!")
        cbFunc();
    }, 10000);
}

function third() {
    setTimeout(()=>{
        console.log('Third func executed!! (Took 8s)')
    }, 8000);
}

console.log("First func is executing!!")
first(second);