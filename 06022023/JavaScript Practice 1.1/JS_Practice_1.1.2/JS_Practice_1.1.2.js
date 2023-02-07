function addItem()     {
    var lst = document.getElementById("listId");
    var a = document.getElementById("inputId").value;
    var li = document.createElement('li');
    li.appendChild(document.createTextNode(a));
    lst.appendChild(li);
}

function removeItem(){
    var lst = document.getElementById("listId");
    if(lst.hasChildNodes()){
        lst.removeChild(lst.children[0]);
    }
}