// app/javascript/packs/application.js
import 'bootstrap';


console.log('Hello World from Webpacker')

let cards = document.querySelectorAll('.card-category');

cards.forEach(function (card) {
  card.addEventListener('click', function (event) {
    card.classList.add('animated', 'flipInY');
  });
});

  $(document).on('turbolinks:load', function(){
      $('#show-card').addClass('animated fadeIn');
  });
