function display(){
    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var email = document.getElementById('email').value;
    var pnum = document.getElementById('pnum').value;
    document.getElementById('display').innerHTML = 'First name: '+fname+'<br>Last name: '+lname+'<br>Email: '+email+'<br>Mobile number: '+pnum;

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