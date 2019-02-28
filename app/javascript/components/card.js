const cardFlipper = () => {
  const cards = document.querySelectorAll('.card-category');
  cards.forEach(function (card) {
    card.addEventListener('click', function (event) {
      card.classList.add('animated', 'flipInY');
    });
  });

  $(document).on('turbolinks:load', function(){
      $('#show-card').addClass('animated flipInY');
  });
}

export { cardFlipper };
