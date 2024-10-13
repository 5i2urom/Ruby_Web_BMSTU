function tree() {
    var body=document.body;
        Node(body, "");
    document.getElementById("print").innerHTML=str;
}

var str="";

function Node(el,s) {
    if (el.localName != undefined){
        str += s + el.tagName +'<br>';
        console.log(el.tagName);
    }
    if(el.childNodes.length == 0){
        console.log("конец ветки");
        return;
    } 
    else{
        for(var i = 0; i < el.childNodes.length;i++){
            Node(el.childNodes[i],s+"&nbsp;&nbsp;&nbsp;&nbsp;");
        }
    }
}