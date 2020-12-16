const accordion = () => {

  const parentMenu = document.querySelectorAll('.menu-group > a');

  for (let i = 0; i < parentMenu.length; i ++) {
    parentMenu[i].addEventListener('click', function(e) {
      e.preventDefault();
      this.classList.toggle('active');
      this.nextElementSibling.classList.toggle('active');
    });
  }
}

window.addEventListener('load', accordion);