// app/javascript/controllers/print_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["table"];

  print() {
    const table = this.tableTarget;

    if (table) {
      table.style.display = "block";
      window.print();
    }
  }
}
