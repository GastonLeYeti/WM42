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


// import { Controller } from 'stimulus';

// export default class extends Controller {
//   static targets = ['input', 'card'];

//   submit(event) {
//     event.preventDefault();
//   }

//   clear() {
//     this.inputTarget.value = '';
//     this.cardTargets.forEach((card) => {
//       card.classList.remove('d-none');
//     });
//   }

//   filterCards(event) {
//     const query = event.target.value.toLowerCase();
//     this.cardTargets.forEach((card) => {
//       const name = card.querySelector('.pnj_name').textContent.toLowerCase();
//       const race = card.querySelector('.fa-earth-asia').nextSibling.textContent.toLowerCase();
//       const job = card.querySelector('.fa-khanda').nextSibling.textContent.toLowerCase();
//       if (name.indexOf(query) === -1 && race.indexOf(query) === -1 && job.indexOf(query) === -1) {
//         card.classList.add('d-none');
//       } else {
//         card.classList.remove('d-none');
//       }
//     });
//   }
// }
