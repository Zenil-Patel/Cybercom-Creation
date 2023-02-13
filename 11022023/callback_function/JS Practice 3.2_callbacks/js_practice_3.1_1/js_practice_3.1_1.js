function display(){
   console.log("All values are correct!")
}
function validate(cbFunc){
    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var email = document.getElementById('email').value;
    var pnum = document.getElementById('pnum').value;
    if(!fname){
        alert("Enter first name!");
        if(!lname){
            alert("Entr last name!");
            if(!email){
                alert("Enter email!");
                if(!pnum){
                    alert("Enter mobile number!");
                }
            }
        }
    }
    else{
        cbFunc();
    }
}