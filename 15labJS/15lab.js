
var elem = document.getElementById('dragElem');

elem.onmousedown = function(e) {
  elem.style.position = 'absolute';
  function moveAt(e) {
    elem.style.left = e.pageX - elem.offsetWidth / 2 + 'px';//event
    elem.style.top = e.pageY - elem.offsetHeight / 2 + 'px';
  }
  document.onmousemove = function(e) {
    moveAt(e);
  }

  // let timePassed = Date.now() - start;

  // if (timePassed >= 2000) {
  //отследить окончание переноса
  elem.onmouseup = function() {
    document.onmousemove = null;
    elem.onmouseup = null;
  }
}
elem.ondragstart = function() {
  return false;
};

function myMove() {
  var elem = document.getElementById('anim1');
  var pos = 0;
  var id = setInterval(frame, 10); //задержка
  function frame() {
    if (pos == 350) {
      clearInterval(id);
    } else {
      pos++;
      elem.style.marginLeft = pos + 'px';
    }
  }
}



