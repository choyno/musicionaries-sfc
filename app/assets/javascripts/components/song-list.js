document.addEventListener("turbolinks:load", function() {

  var tagItems = document.querySelectorAll('.js-color');
  var colorArray = ["#ef5350", "#ec407a", "#ab47bc", "#5c6bc0", "#42a5f5", "#26a69a", "#ffa726", "#ff7043", "#8d6e63"]
  var randomColor = Math.floor(Math.random()*16777215).toString(16);

  for( var i = 0; i < tagItems.length; i++ ) {
    tagItems[i].style.backgroundColor = colorArray[Math.floor(Math.random() * colorArray.length)];
    tagItems[i].style.opacity = 0.5;
  }
});