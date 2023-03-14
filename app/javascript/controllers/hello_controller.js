import { Controller } from "@hotwired/stimulus"
import { MazeBuilder } from "../Maze_constructor"
// import { FancyMazeBuilder } from "../Maze_fancy"

export default class extends Controller {
  static values = {
    generate: Boolean,
    maps: Array,
    cities: Array
  }

  connect() {
    if (this.generateValue) {
      this.mapsValue.forEach((map, index) => {
        // Générer le maze
        // Faire une requête AJAX au serveur (fetch) pour updater la map

        console.log('map id : ' + map.id)

        let Maze = new MazeBuilder(20, 16)
        Maze.placeKey()
        Maze.display(`maze_container_0`)

        const html = document.getElementById(`maze_container_0`).innerHTML
        console.log(html)

        const formData = new FormData()
        formData.append("content", html)

        fetch('/maps/' + map.id, {
          method: "PATCH",
          headers: { "Accept": "application/json" },
          body: formData
        })
      })

      // MEME PRINCIPE POUR CITIES
      this.mapsValue.forEach((city, index) => {
        // Générer le maze
        // Faire une requête AJAX au serveur (fetch) pour updater la map

        console.log('city id : ' + city.id)

        let Maze = new MazeBuilder(20, 16)
        Maze.placeKey()
        Maze.display(`maze_container_${index + 1}`)

        const html = document.getElementById(`maze_container_${index + 1}`).innerHTML
        console.log(html)

        // console.log(city)
        // console.log(city.map)

        const formData = new FormData()
        formData.append("content", html)

        fetch('/cities/' + city.id, {
          method: "PATCH",
          headers: { "Accept": "application/json" },
          body: formData
        })
      })
    }

  }
}
