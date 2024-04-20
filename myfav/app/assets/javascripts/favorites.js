document.addEventListener("DOMContentLoaded", () => {
  const favoriteLinks = document.querySelectorAll(".favorite-link");
function toggleFavoriteLink(link) {
  if (link.textContent === "いいね") {
    link.textContent = "いいねを外す";
  } else {
    link.textContent = "いいね";
  }
}

  favoriteLinks.forEach((link) => {
    link.addEventListener("click", (event) => {
      event.preventDefault();
      const url = event.currentTarget.getAttribute("href");
      const method = event.currentTarget.dataset.method;

      fetch(url, { method: method })
        .then((response) => response.json())
        .then((data) => {
         toggleFavoriteLink(link); // 必要な処理を追加する（例：リンクの切り替えなど）
        })
        .catch((error) => {
          console.error(error);
        });
    });
  });
  });