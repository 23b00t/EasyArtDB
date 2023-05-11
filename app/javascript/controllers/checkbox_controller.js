import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["checkboxLabel"]

  connect() {
    console.log('connected')
  }

  toggle(event) {
    console.log("Toggle method called")
    const checkbox = event.target
    const checked = checkbox.checked
    const label = this.checkboxLabelTarget
    label.classList.toggle("checked", checked)
    checkbox.form.submit()
  }
}
