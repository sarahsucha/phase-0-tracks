function buttonClick() {
  var list = document.getElementById("list");
  if (list.className == "menuOff"){
    list.className = "menuOn";
  } else {
    list.className = "menuOff";
  }
}
