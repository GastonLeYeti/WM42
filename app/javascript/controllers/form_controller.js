import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["section1", "section2", "section3", "formBtn1", "formBtn2", "stepper1", "stepper2", "stepper3", "stepperBar", "secondCity", "loader", "loaderContent"]
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

  submitForm(e) {
    this.loaderTarget.classList.remove('d-none')
    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-85px"
    }, 5000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-198px"
    }, 10000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-306px"
    }, 15000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-416px"
    }, 20000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-529px"
    }, 25000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-639px"
    }, 30000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-748px"
    }, 35000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-861px"
    }, 40000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-861px"
    }, 45000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-972px"
    }, 50000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1081px"
    }, 55000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1194px"
    }, 60000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1305px"
    }, 65000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1415px"
    }, 70000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1530px"
    }, 75000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1636px"
    }, 80000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1748px"
    }, 85000)

    setTimeout(() => {
      this.loaderContentTarget.style.marginTop = "-1856px"
    }, 90000)
  }
}
