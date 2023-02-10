const str = "192168@11";
let pattern = "~`!@#$%^&*()-_+={}[]|\/:;.<>,.?"
let ip = str;

let flag = 1;
for(let i=0; i<ip.length; i++){
    for(j=0; j<pattern.length; j++){
        if(ip[i]===pattern[j]){ 
            console.log("Invalid input");
            flag = 0;
        }
    }
}


if (ip.length < 4 || ip.length > 12) {
    console.log("Invalid IP address");
}
//Checks format of IP address 
function valid(check_ip) {
    let substr = "";
    let check_arr = [];
    for (let i = 0; i < check_ip.length; i++) {
        if (check_ip[i] == ".") {
            check_arr.push(substr);
            substr = "";
        }
        else {
            substr += check_ip[i];
        }
    }
    check_arr.push(substr);
    //Validations
    for(let i=0; i< check_arr.length; i++){
        if(check_arr[i].length>3){
            return 0;
        }
        if(check_arr[i]<0 || check_arr[i]>255){
            return 0;
        }
        if(check_arr[i].length!=1 && check_arr[i][0] == 0){
            return 0;
        }
    }
    

    return true;
}


//String to substring in 4 parts seperated by .
let pseudoIp = ip;
for (let i = 1; i < ip.length - 2; i++) {
    for (let j = i + 1; j < ip.length - 1; j++) {
        for (let k = j + 1; k < ip.length; k++) {
            pseudoIp = pseudoIp.substring(0, k) + "." + pseudoIp.substring(k, pseudoIp.length);
            pseudoIp = pseudoIp.substring(0, j) + "." + pseudoIp.substring(j, pseudoIp.length);
            pseudoIp = pseudoIp.substring(0, i) + "." + pseudoIp.substring(i, pseudoIp.length);

            if (valid(pseudoIp)) { 
                if(flag)
                console.log(pseudoIp); 
            }
            pseudoIp = ip;
        }
    }
}