function display(num){
    document.getElementById("display_exp").innerHTML +=  num;
    // console.log(typeof(num))
}
function clearScreen(){
    document.getElementById("display_exp").innerHTML = "";
}
function result(){
    var expression = document.getElementById("display_exp").innerHTML;
    var ans = eval(expression);
    // console.log(ans);
    document.getElementById("display_result").value = ans;
    // console.log(ans);
    
}