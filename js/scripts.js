window.addEventListener("DOMContentLoaded", (event) => {
  //sidebar
  const sidebarToggle = document.body.querySelector("#sidebarToggle");
  if (sidebarToggle) {
    sidebarToggle.addEventListener("click", (event) => {
      event.preventDefault();
      document.body.classList.toggle("sb-sidenav-toggled");
      localStorage.setItem(
        "sb|sidebar-toggle",
        document.body.classList.contains("sb-sidenav-toggled")
      );
    });
  }
//view pass
  let inputIcon = document.querySelectorAll(".fa-eye"),
    inputPass = document.querySelectorAll(".input-pass"),
    isHidden = true;

  for (let i = 0; i < inputIcon.length; i++) {
    inputIcon[i].onclick = () => {
      if (isHidden) {
        inputIcon[i].removeAttribute("class", "fa-regular fa-eye");
        inputIcon[i].setAttribute("class", "fa-regular fa-eye-slash");

        inputPass[i].setAttribute("type", "text");
      } else {
        inputIcon[i].removeAttribute("class", "fa-regular fa-eye-slash");
        inputIcon[i].setAttribute("class", "fa-regular fa-eye");

        inputPass[i].setAttribute("type", "password");
      }
      isHidden = !isHidden;
    };
  }
});
$(document).ready(function() {
  $('#tbl').DataTable();
});