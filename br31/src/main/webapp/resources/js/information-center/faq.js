document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".faq-list__title").forEach(btn => {
    btn.addEventListener("click", function () {
      const currentItem = this.closest(".faq-list__item");
      const currentAnswer = currentItem.querySelector(".faq-list__answer");

      document.querySelectorAll(".faq-list__item").forEach(item => {
        if (item !== currentItem) {
          item.classList.remove("is-open");
          const answer = item.querySelector(".faq-list__answer");
          answer.style.maxHeight = null;
        }
      });

      if (currentItem.classList.contains("is-open")) {
        currentItem.classList.remove("is-open");
        currentAnswer.style.maxHeight = null;
      } else {
        currentItem.classList.add("is-open");
        currentAnswer.style.maxHeight = currentAnswer.scrollHeight + "px";
      }
    });
  });
});
