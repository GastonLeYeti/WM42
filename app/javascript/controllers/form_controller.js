import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["section1", "section2", "section3", "formBtn1", "formBtn2", "stepper1", "stepper2", "stepper3", "stepperBar", "secondCity"]
  connect() {
    // console.log('eeyeyey')
  }

  hideSection1() {
    this.section1Target.classList.add('fade')
    this.stepper1Target.classList.remove('active')
    setTimeout(() => {
      this.section1Target.classList.add('d-none')
      this.section2Target.classList.remove('d-none')
    }, 700);
    this.stepper2Target.classList.add('active')
    this.stepperBarTarget.style.width = '50%'
  }

  hideSection2() {
    this.section2Target.classList.add('fade')
    this.stepper2Target.classList.remove('active')
    setTimeout(() => {
      this.section2Target.classList.add('d-none')
      this.section3Target.classList.remove('d-none')
    }, 700);
    this.stepper3Target.classList.add('active')
    this.stepperBarTarget.style.width = '90%'
  }

  addCity() {
    this.secondCityTarget.classList.remove('d-none')
  }
}
