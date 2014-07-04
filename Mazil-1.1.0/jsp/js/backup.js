var myInt=1;
  function removeElement(divNum) {
    if(divNum==1){
       location.reload();
  }
    
    var elem = document.getElementById(divNum);
    elem.remove();
    var ni = document.getElementById(divNum-1);
        myInt=divNum;
      var newdiv=document.createElement("div");
       newdiv.id=myInt;
    ni.appendChild(newdiv);
   

}

  
    function myFunction(){
       
      var nameValue=document.getElementById("name").value;
      document.getElementById(myInt).innerHTML = nameValue+"   "+'<a href=\'#\' onclick=\'removeElement('+myInt+')\'><i class="fa fa-times-circle fa-fw"></a>';

       var ni = document.getElementById(myInt);
        myInt++;
      var newdiv=document.createElement("div");
       newdiv.id=myInt;
      ni.appendChild(newdiv);
    };