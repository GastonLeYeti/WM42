import { Controller } from "@hotwired/stimulus"
import { MazeBuilder } from "../Maze_constructor"
// import { FancyMazeBuilder } from "../Maze_fancy"

export default class extends Controller {
  static values = {
    generate: Boolean,
    maps: Array
  }

  connect() {
    console.log(this.generateValue)
    console.log(this.mapsValue)

    if (this.generateValue) {
      this.mapsValue.forEach((map, index) => {
        // Générer le maze
        // Faire une requête AJAX au serveur (fetch) pour updater la map

        console.log('map id : ' + map.id)

        let Maze = new MazeBuilder(20, 16)
        Maze.placeKey()
        Maze.display(`maze_container_${index}`)

        const html = document.getElementById(`maze_container_${index}`).innerHTML
        console.log(html)

        const formData = new FormData()
        formData.append("content", html)

        fetch('/maps/' + map.id, {
          method: "PATCH",
          headers: { "Accept": "application/json" },
          body: formData
        })
      })
    }

  }
}
