$(document).on('ready turbolinks:before-visit', function() {
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
document.addEventListener('turbolinks:load', function() {
  elem = document.querySelector('#slide-out');
  instance = new M.Sidenav(elem, {});
});
document.addEventListener('turbolinks:before-visit', function() {
  elem = document.querySelector('#slide-out');
  instance = M.Sidenav.getInstance(elem);
  if (instance){
    instance.destroy();
  }
});