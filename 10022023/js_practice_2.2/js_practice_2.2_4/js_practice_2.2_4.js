function age(date) {
    let arr = date.split("/");
    console.log(arr);
    return 2023 - arr[2];
}
console.log(age('16 / 02 / 2002'));