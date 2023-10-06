import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkboxes", "listSelect"]

  createBookmark() {
    const selectedItems = this.checkboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.listSelectTarget.value;

    console.log(selectedItems)
    console.log(selectedListId)

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.value);
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
        // Hier kannst du auf die Antwort des Servers reagieren, wenn das Bookmark erfolgreich erstellt wurde.
      })
      .catch(error => {
        console.error("Fehler beim Erstellen des Bookmarks", error);
        // Hier kannst du auf einen Fehler reagieren, wenn das Bookmark nicht erstellt werden konnte.
      });
    }
  }
}
