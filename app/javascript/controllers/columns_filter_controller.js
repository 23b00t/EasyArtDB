import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="columns-filter"
export default class extends Controller {
  static targets = ["checkboxes", "foto", "category", "titel", "size", "artist", "manufacturer", "material", "year", "edition", "provenance", "comments", "references", "tasks"]

  initialize() {
    // Add event listener to all checkboxes
    this.checkboxesTargets.forEach((checkbox) => {
      checkbox.addEventListener("change", this.checkboxChanged.bind(this))
    })
  }

  checkboxChanged(event) {
    const name = event.target.name;
    const filteredTargets = this[`${name}Targets`]

    filteredTargets.forEach((target) => {
      target.classList.toggle("d-none");
    });
  }

}
