import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ['input', 'card']

  connect() {
  }

  submit(event) {
    if(this.inputTarget.value.length === 0) {
      this.clear()
    } else {
      //if(this.inputTarget.value)
      event.preventDefault();
      let searchQuery = this.inputTarget.value

      const firstLetter = searchQuery[0].toUpperCase()
      const restOfTheWord = searchQuery.slice(1).toLowerCase()

      const finalSearch = `${firstLetter}${restOfTheWord}`

      // Iterer sur toute les cards
      this.cardTargets.forEach((card) => {
        // regarder sur chaque si le job contient la searchQuery via includes()
        if(card.querySelector('.searchElement').innerText.includes(searchQuery)) {
        } else {
          // si false alors on met le bloc en display:none
          card.style.display = "none"
        }
      })
    }
  }

  clear() {
    this.inputTarget.value = ""
    this.cardTargets.forEach((card) => {
      card.style.display = "block"
    })
  }
}
