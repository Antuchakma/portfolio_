const sections = document.querySelectorAll("section");
const navLinks = document.querySelectorAll(".navlink");

window.addEventListener("scroll", () => {
  const scrollMiddle = window.innerHeight / 2;

  sections.forEach(section => {
    const rect = section.getBoundingClientRect();
    const isInMiddle = rect.top < scrollMiddle && rect.bottom > scrollMiddle;

    if (isInMiddle) {
      section.classList.add("active");
      navLinks.forEach(link => link.classList.remove("active"));
      const matchingLink = document.querySelector(`.navlink[href="#${section.id}"]`);
      if (matchingLink) matchingLink.classList.add("active");
    } else {
      section.classList.remove("active");
    }
  });
});

// Optional: initialize on load
window.dispatchEvent(new Event('scroll'));
