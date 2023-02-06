function additem(){

}
function removeItem(){
    var lst = document.getElementById("listId");
    if(lst.hasChildNodes()){
        lst.removeChild(lst.children[0]);
    }
}