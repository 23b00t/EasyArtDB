import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
// Controlls checkboxes in tasks/show
export default class extends Controller {
  static targets = ["checkboxLabel"]

  toggle(event) {
    const checkbox = event.target
    const checked = checkbox.checked
    const label = this.checkboxLabelTarget
    label.classList.toggle("checked", checked)
    checkbox.form.submit()
  }
}
