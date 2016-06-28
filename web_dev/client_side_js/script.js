var list = document.getElementById("nav-list");

list.style.display="none";
//document.getElementById("nav-list").style.display = "none";

function revealMenu(){
  var list = document.getElementById("nav-list");
  list.style.display = "block";
}

var hamburgerIcon = document.getElementById("hamburgerIcon");
hamburgerIcon.addEventListener("click", revealMenu);
