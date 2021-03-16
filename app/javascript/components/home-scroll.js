const homeScroll = () => {
  const seta = document.getElementById('seta');

  if (seta) {
    seta.addEventListener('click', () => {

      if (seta.style.transform == "rotate(180deg)") {
        seta.style.transform = 'rotate(0deg)';
        window.scrollTo({
          top: 0,
          behavior: 'smooth'
        });
      } else {
        seta.style.transform = 'rotate(180deg)';
        window.scrollTo({
          top: 320,
          behavior: 'smooth'
        });
      };
    });
  };
}

export { homeScroll }

