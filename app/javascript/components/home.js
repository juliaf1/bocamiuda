const home = () => {
  const categoryCards = document.querySelectorAll('.category-tag');

  if (categoryCards) {
    categoryCards.forEach((card) => {
      card.addEventListener('click', () => {
        let categoryIcon = card.querySelector('img');

        if (!(categoryIcon.style.display == "block")) {
          categoryIcon.style.display = "block";
          card.classList.toggle("active");
        } else {
          categoryIcon.style.display = "none";
         card.classList.toggle("active");
        };

      });
    });
  };
}

export { home };
