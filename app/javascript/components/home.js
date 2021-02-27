const home = () => {
  const categoryCards = document.querySelectorAll('.category-tag');

  if (categoryCards) {
    categoryCards.forEach((card) => {
      card.addEventListener('click', () => {
        let categoryIcon = card.querySelector('img');
        let artistsCards = document.querySelectorAll(`.${card.id}`);

        if (!(categoryIcon.style.display == "block")) {
          categoryIcon.style.display = "block";
          card.classList.toggle("tag-active");
        } else {
          categoryIcon.style.display = "none";
          card.classList.toggle("tag-active");
        };

        artistsCards.forEach((acard) => {
          let artistIcon = acard.querySelector('img');

          if (!(artistIcon.style.display == "block")) {
            artistIcon.style.display = "block";
            acard.classList.toggle("artist-active");
          } else {
            artistIcon.style.display = "none";
            acard.classList.toggle("artist-active");
          };
        });

      });
    });
  };

  document.addEventListener('mousedown', function (event) {
    if (event.detail > 1) {
      event.preventDefault();
      // preventing text selection on double click
    }
  }, false);
}

export { home };
