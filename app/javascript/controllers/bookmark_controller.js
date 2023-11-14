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

  deleteBookmarks() {
    const selectedItems = this.checkboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.extractListIdFromUrl();

    console.log(selectedListId)
    console.log(selectedItems)

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      const csrfToken = document.querySelector('meta[name="csrf-token"]').content;

      fetch('/lists/' + selectedListId + '/bookmarks', {
        method: 'DELETE',
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
        console.log("Bookmarks deleted", data);

        this.removeDeletedElements(itemIds);

        alert("Bookmarks successfully deleted");
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      })
      .catch(error => {
        console.error("Error deleting bookmarks", error);
        alert("Error deleting bookmarks");
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      });
    }
  }

  extractListIdFromUrl() {
    // Get the current pathname (e.g., /lists/3)
    const currentPath = window.location.pathname;

    // Use a regular expression to extract the list ID from the path
    const match = currentPath.match(/\/lists\/(\d+)/);

    // If there is a match, return the captured list ID
    return match ? match[1] : null;
  }

  removeDeletedElements(deletedItemIds) {
    // Iterate over deletedItemIds and remove corresponding elements from the page
    deletedItemIds.forEach(itemId => {
      const elementToRemove = document.querySelector(`[data-bookmark-target="checkboxes"][name="${itemId}"]`);
      if (elementToRemove) {
        // If the checkbox is in a row, remove the entire row
        const row = elementToRemove.closest('tr');
        if (row) {
          row.remove();
        } else {
          // If not, remove only the checkbox
          elementToRemove.remove();
        }
      }
    });
  }
}
