let saveDetails = () => {
    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var email = document.getElementById('email').value;
    var pnum = document.getElementById('pnum').value;


    let promise = new Promise((resolve, reject) => {
        if (fname && lname && email && pnum) 
            resolve("All value are correct")
        else 
            reject("Empty inputs")
    });

    promise.then((value) => {
        console.log(value)
    }).catch((error)=>{
        console.log(error)
    })
}