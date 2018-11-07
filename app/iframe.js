
setTimeout(function () {

  var button_el = document.querySelector('button');

  button_el.textContent = 'Click me!!';

  button_el.addEventListener('click', function () {
    alert('gogogo!!');
  });

  document.scrollingElement.scrollTop = window.innerHeight/4;

}, 2000);
