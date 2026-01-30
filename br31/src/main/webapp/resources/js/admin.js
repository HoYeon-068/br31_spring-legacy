document.addEventListener("DOMContentLoaded", function () {
  const toggles = document.querySelectorAll(".menu-toggle");

  toggles.forEach(toggle => {
    toggle.addEventListener("click", function () {
      const submenu = this.nextElementSibling;
      submenu.style.display =
        submenu.style.display === "block" ? "none" : "block";
    });
  });
});
