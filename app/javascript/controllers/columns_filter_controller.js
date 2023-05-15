import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="columns-filter"
export default class extends Controller {
  static targets = ["toggle", "form", "input", "list", "checkboxes", "foto", "category", "titel", "size", "artist", "manufacturer", "material", "year", "edition", "provenance", "comments", "references", "tasks"]

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
    const artistId = document.querySelector("#artist_id").value;
    const openTasks = document.querySelector("#open_tasks").value;
    const incomplete = document.querySelector("#incomplete").value;

    const url = `${this.formTarget.action}?artist_id=${artistId}&query=${this.inputTarget.value}&open_tasks=${openTasks}&incomplete=${incomplete}&commit=Filter`;

    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }

  resetForm() {
    window.location.href = '/';
  }

  submitForm() {
    this.formTarget.submit();
  }

  displayForm() {
    this.toggleTarget.classList.toggle("d-none")
  }
}
