

 var myInt=1;
  var from="HI";
  function removeElement(divNum) {
    var elem = document.getElementById(divNum);
    elem.remove();
}



function myFunction(id){
       var newdiv=document.createElement("div");
       newdiv.id=myInt;
       var nameValue=document.getElementById(id).value;
       var position=document.getElementById("post");
     
      position.appendChild(newdiv);
       document.getElementById(myInt).innerHTML = from+"&nbsp:"+"&nbsp"+nameValue+"   "+'<a href=\'#\' onclick=\'removeElement('+myInt+')\'><i class="fa fa-times-circle fa-fw"></a>';
       ++myInt;
    };


     function setValue (value) {
       from=value;
     }
     var checkbox = document.getElementById("name9");
     var icheckbox;
    function checkbx(id) {
    	if(checkbox.checked){
    	var newdiv=document.createElement("div");
        newdiv.id=myInt;
        var nameValue="Checked";
        var position=document.getElementById("post");
       position.appendChild(newdiv);
        document.getElementById(myInt).innerHTML = from+"&nbsp:"+"&nbsp"+nameValue+"   "+'<a href=\'#\' onclick=\'removeElement('+myInt+');checkbox.checked=false;\'><i class="fa fa-times-circle fa-fw"></a>';
        icheckbox=myInt;
        ++myInt;
    	} else{
    		removeElement(icheckbox);
    	}
    };
    

    