var x = false;
function imgchange(obj, img1, img2) {
  if (x) {
    obj.src = img1;
  } else {
    obj.src = img2;
  }
  x = !x;
}

var y = false;
var image = document.getElementById('image');
function imgchange1(obj, text) {
  if (y) {
    obj.innerHTML = '<img src="img1.jpg">';
  } else {
    obj.innerHTML = text;
  }
  y = !y;
}
