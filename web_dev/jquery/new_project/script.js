console.log("The script is running!");

function addPinkBorder(event) {
  event.target.style.border = "5px solid pink";
}

var photo = document.getElementById("laptop-photo");
photo.addEventListener("click", addPinkBorder);