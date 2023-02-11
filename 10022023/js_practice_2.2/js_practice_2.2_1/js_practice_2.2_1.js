function display(num){
    document.getElementById("display_exp").innerHTML +=  num;
    // console.log(typeof(num))
}
function clearScreen(){
    document.getElementById("display_exp").innerHTML = "";
}
function result(){
    var expression = document.getElementById("display_exp").value;
    console.log(expression);
    var ans = eval(expression);
    // console.log(ans);
    document.getElementById("display_result").innerHTML = ans;
    // console.log(ans);
    
}