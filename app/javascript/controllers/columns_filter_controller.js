import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggle", "form", "input", "list", "listSelect", "itemCheckboxes", "bookmarkForm", "checkboxes", "foto", "category", "titel", "size", "artist", "manufacturer", "material", "year", "edition", "provenance", "comments", "references", "tasks"];

  initialize() {
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
    const artistId = this.getInputElementValue("#artist_id");
    const openTasks = this.getInputElementValue("#open_tasks");
    const incomplete = this.getInputElementValue("#incomplete");
    const url = `${this.formTarget.action}?artist_id=${artistId}&query=${this.inputTarget.value}&open_tasks=${openTasks}&incomplete=${incomplete}&commit=Filter`;
    this.fetchAndUpdateList(url);
  }

  fetchAndUpdateList(url) {
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      });
  }

  getInputElementValue(selector) {
    return document.querySelector(selector).value;
  }

  resetForm() {
    window.location.href = '/';
  }

  submitForm() {
    this.formTarget.submit();
  }

  displayForm() {
    this.toggleTarget.classList.toggle("d-none");
  }

  uncheckAllCheckboxes() {
    this.itemCheckboxesTargets.forEach((checkbox) => {
      checkbox.checked = false;
    });
  }

  toggleBookmarkForm() {
    this.bookmarkFormTarget.classList.toggle("d-none");
  }

  createBookmark() {
    const selectedItems = this.itemCheckboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.listSelectTarget.value;

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      this.handleBookmarkAction('/lists/' + selectedListId + '/bookmarks', itemIds);
    }
  }

  deleteBookmarks() {
    const selectedItems = this.itemCheckboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.extractListIdFromUrl();

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      this.handleBookmarkAction('/lists/' + selectedListId + '/bookmarks', itemIds);
    }
  }

  handleBookmarkAction(url, itemIds) {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    fetch(url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      },
      body: JSON.stringify({
        item_ids: itemIds,
        list_id: this.listSelectTarget.value
      })
    })
      .then(response => response.json())
      .then(data => {
        alert("Erfolgreich zur Liste hinzugefügt");
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      })
      .catch(error => {
        // console.error("Error in Bookmarks action", error);
        alert("Ups, etwas ist schief gelaufen:", error);
        setTimeout(() => {
          this.uncheckAllCheckboxes();
        }, 100);
      });
  }

  extractListIdFromUrl() {
    const match = window.location.pathname.match(/\/lists\/(\d+)/);
    return match ? match[1] : null;
  }

  removeDeletedElements(deletedItemIds) {
    deletedItemIds.forEach(itemId => {
      const elementToRemove = document.querySelector(`[data-bookmark-target="itemCheckboxes"][name="${itemId}"]`);
      if (elementToRemove) {
        const row = elementToRemove.closest('tr');
        if (row) {
          row.remove();
        } else {
          elementToRemove.remove();
        }
      }
    });
  }
}
