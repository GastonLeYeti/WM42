import { Controller } from "@hotwired/stimulus"
import { MazeBuilder } from "../Maze_constructor"
// import { FancyMazeBuilder } from "../Maze_fancy"

export default class extends Controller {
  static values = {
    generate: Boolean,
    maps: Array,
    cities: Array,
    size: String,
  }

  connect() {
    if (this.generateValue) {
      const size = this.element.dataset.partySize
      this.mapsValue.forEach((map, index) => {
        // Générer le maze
        // Faire une requête AJAX au serveur (fetch) pour updater la map

        // console.log('map id : ' + map.id)
        console.log(size)

        let rows, cols;
        if (size === 'Petite') {
          rows = 12;
          cols = 10;
        } else if (size === 'Moyenne') {
          rows = 15;
          cols = 13;
        } else if (size === 'Grande') {
          rows = 20;
          cols = 18;
        }

        const Maze = new MazeBuilder(rows, cols)
        Maze.placeKey()
        // console.log(index)
        Maze.display(`maze_container_0`)

        const html = document.getElementById(`maze_container_0`).innerHTML
        // console.log(html)

        // const Maze = new MazeBuilder(20, 16)
        // Maze.placeKey()
        // Maze.display(`maze_container_0`)

        // const html = document.getElementById(`maze_container_0`).innerHTML
        // // console.log(html)

        const formData = new FormData()
        formData.append("content", html)

        fetch('/maps/' + map.id, {
          method: "PATCH",
          headers: { "Accept": "application/json" },
          body: formData
        })
      })

      // MEME PRINCIPE POUR CITIES
      this.citiesValue.forEach((city, index) => {
        // Générer le maze
        // Faire une requête AJAX au serveur (fetch) pour updater la map

        console.log('city id : ' + city.id)

        const Maze = new MazeBuilder(10, 8)
        Maze.placeKey()
        console.log(index)
        Maze.display(`maze_container_${index + 1}`)

        const html = document.getElementById(`maze_container_${index + 1}`).innerHTML
        console.log(html)

        // console.log(city)
        // console.log(city.map)

        const formData = new FormData()
        formData.append("content", html)
        const csrfToken = document.querySelector('meta[name="csrf-token"]').content
        console.log(formData)
        fetch('/cities/' + city.id, {
          method: "PATCH",
          headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken },
          body: formData
        })
      })
    }

  }
}
