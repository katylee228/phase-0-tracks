var photo = document.getElementById("phoenix-photo");
  photo.style.border = "5px solid green";

function addPinkborder(event) {
  event.target.style.border = "5px solid pink";
}

var photo = document.getElementById("phoenix-photo");
photo.addEventListener("click", addPinkborder);

