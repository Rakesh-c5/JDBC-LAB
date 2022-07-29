var menuIcon = document.querySelector(".menu-icon");
var sidebar= document.querySelector(".sidebar");
var container= document.querySelector(".container");


var info= document.querySelector(".intro");
var ab= document.querySelector(".aboutuser");

var c5=document.querySelector(".intro1");
var bhanu=document.querySelector(".help");

c5.onclick=function(){
    bhanu.classList.toggle("about")
}



menuIcon.onclick=function(){
    sidebar.classList.toggle("small-sidebar")
    container.classList.toggle("large-container")
}


info.onclick=function(){
    ab.classList.toggle("about")
}





