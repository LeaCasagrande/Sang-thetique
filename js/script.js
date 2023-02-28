const navbar = document.getElementById("navig");

window.addEventListener("scroll", () => {
  if (window.scrollY > 100) {
    navbar.classList.add("scroll");
  } else {
    navbar.classList.remove("scroll");
  }
});