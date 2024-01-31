import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggle", "form", "input", "paginationTable", "listSelect", "itemCheckboxes", "bookmarkForm", "checkboxes", "foto", "category", "titel", "size", "artist", "manufacturer", "material", "year", "edition", "provenance", "comments", "references", "tasks", "select"];

  initialize() {
    // Event listener for checkboxes to show/hide columns
    this.checkboxesTargets.forEach((checkbox) => {
      checkbox.addEventListener("change", this.checkboxChanged.bind(this))
    });

    // Show checkboxes to select and delete items from a list if user is in lists/show
    if (window.location.pathname.includes("/lists/")) {
      const selectTargets = this.selectTargets;

      selectTargets.forEach((target) => {
        target.classList.toggle("d-none");
      });
    }

    // Retrieve checkbox state from localStorage
    const storedCheckboxState = localStorage.getItem("checkboxState");
    if (storedCheckboxState) {
      const checkboxState = JSON.parse(storedCheckboxState);
      Object.keys(checkboxState).forEach((name) => {
        const isChecked = checkboxState[name];

        // Update checkboxes
        const checkboxes = document.querySelectorAll(`[name="${name}"]`);
        checkboxes.forEach((checkbox) => {
          checkbox.checked = isChecked;
        });

        const filteredTargets = this[`${name}Targets`];
        if (filteredTargets) {
          filteredTargets.forEach((target) => {
            target.classList.toggle("d-none", !checkboxState[name]);
          });
        }
      });
    }
  }

  checkboxChanged(event) {
    const name = event.target.name;
    const filteredTargets = this[`${name}Targets`];

    // Toggle the visibility of checkboxes
    filteredTargets.forEach((target) => {
      target.classList.toggle("d-none");
    });

    // Update localStorage with the current state of checkboxes
    const checkboxState = JSON.parse(localStorage.getItem("checkboxState")) || {};
    checkboxState[name] = !filteredTargets[0].classList.contains("d-none");

    localStorage.setItem("checkboxState", JSON.stringify(checkboxState));
  }


  // update DOM based on user input in the global search field
  update() {
    const artistId = this.getInputElementValue("#artist_id");
    const openTasks = this.getInputElementValue("open_tasks");
    // const incomplete = this.getInputElementValue("#incomplete");
    const sort = this.getInputElementValue('input[name="sort_order"]:checked');
    const url = `${this.formTarget.action}?artist_id=${artistId}&query=${this.inputTarget.value}&open_tasks=${openTasks}&sort_order=${sort}`;
    this.fetchAndUpdateList(url);
  }

  fetchAndUpdateList(url) {
    fetch(url, { headers: { "Accept": "text/plain" } })
      .then(response => response.text())
      .then((data) => {
        this.paginationTableTarget.innerHTML = data;
      });
  }

  getInputElementValue(selector) {
    const input = this.element.querySelector(selector);
    return input ? input.value : '';
  }

  resetForm() {
    // Clear the localStorage
    localStorage.removeItem("checkboxState");

    const baseUrl = window.location.pathname; // Get the base URL without query parameters
    window.location.href = baseUrl; // Reload the page with the base URL
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
    // Get all elements with data-columns-filter-target="select"
    const selectTargets = this.selectTargets;

    // Toggle the visibility of each select target - could be refactored with the func in init
    selectTargets.forEach((target) => {
      target.classList.toggle("d-none");
    });
  }

  async handleBookmarkAction(url, method, itemIds, listId) {
    const csrfToken = document.querySelector('meta[name="csrf-token"]').content;
    try {
      const response = await fetch(url, {
        method: method,
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken
        },
        body: JSON.stringify({
          item_ids: itemIds,
          list_id: listId
        })
      });

      if (!response.ok) {
        throw new Error(`Error: ${response.status}`);
      }

      const data = await response.json();
      // console.log("Bookmarks action completed", data);

      if (method === 'DELETE') {
        this.removeDeletedElements(itemIds);
        alert("Erfolgreich von Liste entfernt!");
      } else {
        alert("Erfolgreich zur Liste hinzugefügt");
      }

      this.uncheckAllCheckboxes();
    } catch (error) {
      // console.error("Error in Bookmarks action", error);
      alert("Ups, etwas ist schief gelaufen:");
      this.uncheckAllCheckboxes();
    }
  }

  createBookmark() {
    const selectedItems = this.itemCheckboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.listSelectTarget.value;

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      const url = '/lists/' + selectedListId + '/bookmarks';
      this.handleBookmarkAction(url, 'POST', itemIds, selectedListId);
    }
  }

  deleteBookmarks() {
    const selectedItems = this.itemCheckboxesTargets.filter(checkbox => checkbox.checked);
    const selectedListId = this.extractListIdFromUrl();

    if (selectedItems.length > 0 && selectedListId) {
      const itemIds = selectedItems.map(checkbox => checkbox.name);
      const url = '/lists/' + selectedListId + '/bookmarks';
      this.handleBookmarkAction(url, 'DELETE', itemIds, selectedListId);
    }
  }

  extractListIdFromUrl() {
    const match = window.location.pathname.match(/\/lists\/(\d+)/);
    return match ? match[1] : null;
  }

  removeDeletedElements(deletedItemIds) {
    // Iterate over deletedItemIds and remove corresponding elements from the page
    deletedItemIds.forEach(itemId => {
      const elementToRemove = document.querySelector(`[data-columns-filter-target="itemCheckboxes"][name="${itemId}"]`);
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
