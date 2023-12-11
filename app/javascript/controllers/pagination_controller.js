import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pagination"
export default class extends Controller {
  static targets = ["pagination"]

  connect() {
    this.paginationTargets.forEach(link => {
      link.addEventListener("click", (event) => {
        event.preventDefault();

        const url = link.getAttribute("href");

        Rails.ajax({
          url: url,
          type: "get",
          success: (data) => {
            this.element.outerHTML = data;
          }
        });
      });
    });
  }
}
