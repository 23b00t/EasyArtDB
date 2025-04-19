import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["table"];

  print() {
    if (this.hasTableTarget) {
      // Find all links in the table
      const links = this.tableTarget.querySelectorAll('a');
      links.forEach(link => {
        // remove the href attribute
        link.removeAttribute('href');
      });

      // Show print dialog
      this.tableTarget.style.display = "block";
      window.print();

      // Restore links
      links.forEach(link => {
        link.setAttribute('href', link.getAttribute('data-href'));
      });
    }
  }
}
