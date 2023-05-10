import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pagination"
export default class extends Controller {
  static targets = ["link"]

  connect() {
    this.linkTargets.forEach(link => {
      link.addEventListener("click", () => {
        Rails.ajax({
          url: link.href,
          type: "get",
          success: (data) => {
            this.element.outerHTML = data
          }
        })
      })
    })
  }
}
