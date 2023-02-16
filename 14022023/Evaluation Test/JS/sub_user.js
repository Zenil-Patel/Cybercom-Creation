let currUser = localStorage.getItem("userSession");

document.getElementById('userName_display').innerHTML += currUser;

//Fetchd Users and Session values 
let usersDataStr = localStorage.getItem('Users');
let sessionDataStr = localStorage.getItem('Session');

let usersData = JSON.parse(usersDataStr);
let sessionData = JSON.parse(sessionDataStr);

//
let date = new Date();
strDate = JSON.stringify(date);
let currentDate = strDate.slice(6, 11)





for (let i = 0; i < usersData.length; i++) {
    if (currUser == usersData[i].Name) {
        let bDate = (usersData[i].Birthdate).slice(5, 11);
        if (bDate == currentDate) {
            document.getElementById('displayBday').innerHTML = "HAPPY BIRTHDAY!!";
        }
    }
}

function logout() {
    for (let i = 0; i < sessionData.length; i++) {  
        let logoutTime = new Date();
    // let logout_time_date = { 'Logout_time_date': logoutTime };
    if (currUser == sessionData[i].Name) {
        sessionData[i].Logout_time_date = logoutTime;
        console.log(typeof(JSON.stringify(sessionData)));
    }
}

localStorage.setItem('Session', JSON.stringify(sessionData));
window.location.href = 'login_page.htm';
localStorage.removeItem('userSession');
}