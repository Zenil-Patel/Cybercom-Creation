
retrivedData = JSON.parse(localStorage.getItem('Users'));

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
    window.location.href = 'login.htm';
}


let table = document.getElementById('table');
for (i = 0; i < retrivedData.length; i++) {
    function deleteUser() {
        table.deleteRow(i);
        delete retrivedData[i];
    }
    //For age
    let arr = [];
    arr.push(parseInt(retrivedData[i].Birthdate.split("-")));


    let row = table.insertRow(-1);

    let cell1 = row.insertCell(0);
    let cell2 = row.insertCell(1);
    let cell3 = row.insertCell(2);
    let cell4 = row.insertCell(3);
    let cell5 = row.insertCell(4);
    let cell6 = row.insertCell(5);

    cell1.innerHTML = retrivedData[i].Name;
    cell2.innerHTML = retrivedData[i].Email;
    cell3.innerHTML = retrivedData[i].Password;
    cell4.innerHTML = retrivedData[i].Birthdate.split("-").reverse().join("-");
    cell5.innerHTML = 2023 - arr[0];
    cell6.innerHTML = `<button onclick="">Edit</button><button onclick="deleteUser()">Delete</button>`;
}

function addUser() {
    let uName = document.getElementById('userName').value;
    let uEmail = document.getElementById('userEmail').value;
    let uPassword = document.getElementById('userPassword').value;
    let uBdate = document.getElementById('userBdate').value;

    if (uName) {
        if (uEmail) {
            if (uPassword) {

                userObj = { "Name": uName, "Email": uEmail, "Password": uPassword, "Birthdate": uBdate };
                console.log(userObj)
                
                let a = JSON.stringify([]);
                if (!localStorage.getItem('Users')) {
                    localStorage.setItem('Users', a);
                }

                let oldData = JSON.parse(localStorage.getItem('Users'));
                // console.log(oldData);
                oldData.push(userObj);
                localStorage.setItem("Users", JSON.stringify(oldData));

                window.location.reload();


            } else {
                document.getElementById('displayErr').innerHTML = "Enter password";
            }

        } else {
            document.getElementById('displayErr').innerHTML = "Enter email";
        }

    } else {
        document.getElementById('displayErr').innerHTML = "Enter name"
    }







}