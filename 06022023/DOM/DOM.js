function response()     {
    var id1 = document.getElementById("id1").value;
    document.getElementById("display1").innerHTML = id1+" :This value is accessed using Id attribute";
}

function className_querySelectorAll(){
    var para = document.getElementsByClassName("para");
    para[0].style.color="red";
    para[1].style.color="red";
    para[2].style.color="red";
    // looping statements can ber used

    var num = para.length;
    document.getElementById("display2").innerHTML = "Number of p tags with class name as para: "+num;
    

    var lst = document.querySelectorAll(".qs");
    lst[0].style.backgroundColor="blue";
    lst[1].style.backgroundColor="blue";

    //for loop can be used as well
}

function tagName_querySelector(){
    debugger
    var size = document.getElementsByTagName("p");
    // Not executing
    size[0].style.fontSize=25;
    size[1].style.fontSize=25;
    size[2].style.fontSize=25;
    size[3].style.fontSize=25;
    
    var num = size.length;
    document.getElementById("display2").innerHTML = "Number of p tags: "+num;


    document.querySelector("p").style.backgroundColor="yellow";
}

function changeText(){
    let updatedText = "This is modified text. (Example of .innerHTML)";
    document.getElementById("txt").innerHTML = updatedText;
}

function insertHTML(){
    var h4 = document.getElementById("h4Id");
    var html = "<span>Zenil here!!</span>";
    h4.insertAdjacentHTML("beforeend", html);
}

function getAtt(){
    var a = document.getElementById("getAttribute_id");
    var text1 = a.getAttribute("id");
    var text2 = a.getAttribute("class");
    document.getElementById("getAttribute_span").innerHTML ="Id attribute of p tag"+ text1 +" Class attribute of p tag"+text2;
}

function changeType(){
    var a = document.getElementById("setAttribute_id");
    a.setAttribute("type" , "button");
    
}

function changeCss(){
    var a = document.getElementById("classlist_id");
    a.classList.toggle("classlist_style");
}