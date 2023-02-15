function registerDetails() {

    let name = document.getElementById('rName').value;
    let email = document.getElementById('rEmail').value;
    let password = document.getElementById('rPassword').value;
    let cPassword = document.getElementById('rConPassword').value;
    let state = document.getElementById('rState').value;
    let city = document.getElementById('rCity').value;
    let tC = document.getElementById('rTC');

    if (name) {
        if (email) {
            if (password) {
                if (cPassword) {
                    if (password == cPassword) {
                        if (city) {
                            if (tC.checked) {
                                obj = { "Name": name, "Email": email, "Password": password, "State": state, "City": city };
                                let adminDetails = JSON.stringify(obj);
                                localStorage.setItem("Admin", adminDetails);
                                window.location.href = 'login_page.htm';
                            } else {
                                document.getElementById('errTc').innerHTML = "Please check the T & C!"
                            }
                        } else {
                            document.getElementById('errCity').innerHTML = "Enter city name!";
                        }
                    } else {
                        document.getElementById('errCoPass').innerHTML = "Confirm password didn't matched!"
                    }
                } else {
                    document.getElementById('errCoPass').innerHTML = "Entre confirmation password!"
                }
            } else {
                document.getElementById('errPass').innerHTML = "Enter password!"
            }
        } else {
            document.getElementById('errEmail').innerHTML = "Enter email!"
        }
    } else {
        document.getElementById('errName').innerHTML = "Enter name!"
    }
}

