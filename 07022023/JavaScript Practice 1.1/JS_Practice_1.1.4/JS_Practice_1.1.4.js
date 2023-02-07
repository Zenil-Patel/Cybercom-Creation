function validate() {
    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var dob = document.getElementById('dob').value;
    var email = document.getElementById('email').value;
    var pnum = document.getElementById('pnum').value;
    var email = document.getElementById('email').value;
    var address = document.getElementById('add').value;
    
    
// console.log(email);

if(fname){
} else{
    alert('Please enter you First name!');
    return false
}
if(dob){    
}else{
    alert('Please enter your birth date!');
    return false
}
if(email){
}else{
    alert('PLease enter your email!');
    return false
}
if(pnum){
}else{
    alert('Please enter your phone number!');
    return false
}

document.getElementById('display').innerHTML = "Name: "+fname+" "+lname+"<br>Date of Birth: " + dob+ "<br>E-mail: "+ email +"<br> Phone number: " + pnum+"<br>Address: "+address;

}