import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark"
export default class extends Controller {
  static targets = ["checkboxes"]

  connect() {
    console.log("bookmark")
    console.log(this.checkboxesTargets)
  }
}
