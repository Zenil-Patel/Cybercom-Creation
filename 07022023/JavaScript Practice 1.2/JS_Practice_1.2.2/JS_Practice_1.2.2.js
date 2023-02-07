var product = [{ name: "tshirt", price: "999", quantity: "3" },
               { name: "Jeans", price: "1499", quantity: "2"},
               { name: "Cap", price: "499", quantity: "3" }]
a=[];
for (i = 0; i<product.length; i++){
    var total = product[i].price * product[i].quantity;
    a.push(total);
}
totalPrice = 0;
for(i=0; i<a.length;i++){
    totalPrice += a[i];
}

console.log(totalPrice);