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
let bdateArr = [];
for (let i = 0; i < retriveData.length; i++) {
    let date = new Date();

    strDate = JSON.stringify(date);
    let currentDate = strDate.slice(6, 11)
    let bDate = (retriveData[i].Birthdate).slice(5,11);
    bdateArr.push(bDate);
    if (currentDate == bDate){
        document.getElementById('displayBday').innerHTML = "Today is '"+retriveData[i].Name+"' Birthday."
    }
}

//Array of ages of users
let ageArr = [];
let bYear = [];
let date = JSON.stringify(new Date())
let currYear = date.slice(1,5)

for(let i=0; i<retriveData.length; i++){
    bYear.push((retriveData[i].Birthdate).slice(0,4))
}


for (let i=0; i<bdateArr.length; i++){
    ageArr.push(parseInt(currYear)-parseInt(bYear[i]));
}

let below18Arr = [];
let abover50Arr = [];
let betnArr = [];

let countBelow18 = 0;
let countabove50 = 0;
let countbetn = 0;
for (let i=0; i<ageArr.length; i++){
    if(ageArr[i]<18){
        below18Arr.push(ageArr[i]);
        countBelow18++;
    }
    if(ageArr[i]>18 && ageArr[i]<50){
        betnArr.push(ageArr[i]);
        countbetn++;
    }
    if(ageArr[i]>50){
        abover50Arr.push(ageArr[i]);
        countabove50++;
    }
}
document.getElementById('agePara1').innerHTML= countBelow18;
document.getElementById('agePara2').innerHTML= countbetn;
document.getElementById('agePara3').innerHTML= countabove50;