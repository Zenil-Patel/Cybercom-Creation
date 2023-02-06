// Function to add a new row at the bottom of the table
function addNewRow() {
    var table = document.getElementById("record");
    var row = table.insertRow(-1);


    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    
    cell1.innerHTML = `<input type="text"></input>`
    cell2.innerHTML = `<input type="date"></input>`
    cell3.innerHTML = `<input type="text"></input>`
    cell4.innerHTML = `<input type="text"></input>`
}

//By selecting Yes, a new div will get visible for 1st part
function visible1_yes(){
    var y = document.getElementById("visibleDiv1");
    if(document.getElementById("yesId1").checked){
        y.style.visibility = "visible";
    }
}
//By selecting No, div will be/stay hidden for 1st part
function visible1_no(){
    var y = document.getElementById("visibleDiv1");
    if(document.getElementById("noId1").checked){
        y.style.visibility = "hidden";
    }
}

//By selecting Yes, a new div will get visible for 2nd part
function visible2_yes(){
    var y = document.getElementById("visibleDiv2");
    if(document.getElementById("yesId2").checked){
        y.style.visibility = "visible";
    }
}
//By selecting No, a new div will be/stay hidden for 2nd part
function visible2_no(){
    var y = document.getElementById("visibleDiv2");
    if(document.getElementById("noId2").checked){
        y.style.visibility = "hidden";
    }
}