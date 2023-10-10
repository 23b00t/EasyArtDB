import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkboxes", "listSelect"]

  uncheckAllCheckboxes() {
    this.checkboxesTargets.forEach((checkbox) => {
      checkbox.checked = false;
    });
  }

  createBookmark() {
    const selectedItems = this.checkboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.listSelectTarget.value;

    console.log(selectedItems)
    console.log(selectedListId)

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      console.log(itemIds)
      const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

      fetch('/lists/' + selectedListId + '/bookmarks', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken
        },
        body: JSON.stringify({
          item_ids: itemIds,
          list_id: selectedListId
        })
      })
      .then(response => response.json())
      .then(data => {
        console.log("Bookmark erstellt", data);
        alert("Bookmarks erfolgreich erstellt");
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      })
      .catch(error => {
        console.error("Fehler beim Erstellen des Bookmarks", error);
        alert("Es konnten nicht alle Items hinzugefügt werden!")
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      });
    }
  }
}
