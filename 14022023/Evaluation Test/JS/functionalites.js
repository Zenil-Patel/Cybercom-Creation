let userName = JSON.parse(localStorage.getItem("Admin"));
document.getElementById('userName_display').innerHTML += userName.Name;

function redirectUsers() {
    window.location.href = 'users.htm';
}

function redirectDashboard() {
    window.location.href = 'dashboard.htm';
}

function redirectSession() {
    window.location.href = 'user_session.htm';
}

function logout() {
    window.location.href = 'login_page.htm';
}



retriveData = JSON.parse(localStorage.getItem('Users'));

for (let i = 0; i < retriveData.length; i++) {
    let date = new Date();

    strDate = JSON.stringify(date);
    currentDate = strDate.slice(6, 11)
    let bDate = (retriveData[i].Birthdate).slice(5,11);
    if (currentDate == bDate){
        document.getElementById('displayBday').innerHTML = "Today is '"+retriveData[i].Name+"' Birthday."
    }
}