import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="columns-filter"
export default class extends Controller {
  static targets = ["form", "input", "list", "checkboxes", "foto", "category", "titel", "size", "artist", "manufacturer", "material", "year", "edition", "provenance", "comments", "references", "tasks"]

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

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}${window.location.search.replace(/[^&]+(?=&)/, '')}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }

  resetForm() {
    const form = this.formTarget;
    form.querySelectorAll("input, select, textarea").forEach(input => {
      input.value = "";
    });
    const url = `${this.formTarget.action}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
    })
  }

  submitForm() {
    this.formTarget.submit();
  }
}
