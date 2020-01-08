$(document).on('ready turbolinks:load', function() {
  $(".dropdown-trigger").dropdown();
  
  toastr.options = {
    "closeButton": false,
    "debug": false,
    "positionClass": "toast-bottom-left",
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }
})

// Necessary for SideNav
let screenSize = window.innerWidth;
if (screenSize <= 768) {
  document.addEventListener('turbolinks:load', function() {
    slideOut = document.querySelector('#slide-out');
    slideOutInstance = new M.Sidenav(slideOut, {});
  });

  document.addEventListener('turbolinks:before-visit', function() {
    slideOut = document.querySelector('#slide-out');
    slideOutInstance = M.Sidenav.getInstance(slideOut);
    if (slideOutInstance){
      slideOutInstance.destroy();
    }
  });
}