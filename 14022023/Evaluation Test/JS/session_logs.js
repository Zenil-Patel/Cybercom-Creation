let userName = JSON.parse(localStorage.getItem("Admin"));
document.getElementById('userName_display').innerHTML += userName.Name;

function redirectUsers(){
    window.location.href = 'users.htm';
}

function redirectDashboard(){
    window.location.href ='dashboard.htm';
}

function redirectSession(){
    window.location.href = 'user_session.htm';
}

function logout(){
    window.location.href = 'login_page.htm';
}

let table = document.getElementById('sessionTable');
retrivedSession = JSON.parse(localStorage.getItem('Session'));
console.log(retrivedSession.length)
for (let i=0; i<retrivedSession.length; i++){
    let row = table.insertRow(-1);

    let cell1 = row.insertCell(0);
    let cell2 = row.insertCell(1);
    let cell3 = row.insertCell(2);
    cell1.innerHTML = retrivedSession[i].Name;
    cell2.innerHTML = retrivedSession[i].login_date_time;
    cell3.innerHTML = retrivedSession[i].Logout_time_date;

}