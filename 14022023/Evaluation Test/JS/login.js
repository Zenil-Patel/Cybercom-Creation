if (!localStorage.getItem('Admin')) {
    document.getElementById('registerDiv').style.visibility = "visible";
}
if(localStorage.getItem('Admin')){
    document.getElementById('registerTxt').style.visibility = "visible";
}



function redirect() {
    window.location.href = 'register_page.htm';
}


function validate() {

    //values from Login.htm page
    let userEmail = document.getElementById('loginEmail').value;
    let userPass = document.getElementById('loginPassword').value;

    //Admin details
    loginAdminDataStr = localStorage.getItem('Admin');
    loginAdminDataObj = JSON.parse(loginAdminDataStr);

    let storedAdminEmail = loginAdminDataObj.Email;
    let storedAdminPass = loginAdminDataObj.Password;

    //Sub users details
    let loginUserDataStr = localStorage.getItem('Users');
    let loginUserDataObj = JSON.parse(loginUserDataStr);

    if ((userEmail == storedAdminEmail && userPass == storedAdminPass)) {
        console.log("Logged in successfully as ADMIN!!")
        window.location.href = 'dashboard.htm';
    }
    else {
        document.getElementById('displayErr').innerHTML = "Invalid Admin details"
    }




    for (i = 0; i < loginUserDataObj.length; i++) {
        let storedUserEmail = loginUserDataObj[i].Email;
        let storedUserPass = loginUserDataObj[i].Password;
        var storedUserName = loginUserDataObj[i].Name;



        if (userEmail == storedUserEmail && userPass == storedUserPass) {


            const date = new Date();
            sessionObj = { "Name": storedUserName, "login_date_time": date };
            let a = JSON.stringify([]);
            if (!localStorage.getItem('Session')) {
                localStorage.setItem('Session', a);
            }
            let withDate = JSON.parse(localStorage.getItem('Session'));
            withDate.push(sessionObj);
            localStorage.setItem("Session", JSON.stringify(withDate));

            // module.exports = {sessionObj};

            console.log("Logged in successfully as USER!!");
            window.location.href = 'sub_user.htm';
            
            //Storing the name of logged in user into LS
            localStorage.setItem("userSession", storedUserName);

        }
        else {
            document.getElementById('displayErr2').innerHTML = "May be you are not a user"
        }

    }

}
