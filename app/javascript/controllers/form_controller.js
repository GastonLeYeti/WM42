import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["section1", "section2", "section3", "formBtn1", "formBtn2"]
  connect() {
    // console.log('eeyeyey')
  }

  hideSection1() {
    this.section1Target.classList.add('fade')
    setTimeout(() => {
      this.section1Target.classList.add('d-none')
      this.section2Target.classList.remove('d-none')
    }, 700);
  }

  hideSection2() {
    this.section2Target.classList.add('fade')
    setTimeout(() => {
      this.section2Target.classList.add('d-none')
      this.section3Target.classList.remove('d-none')
    }, 700);
  }
}
