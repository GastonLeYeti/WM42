// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
//= require materialize

document.addEventListener('DOMContentLoaded', function() {
  M.AutoInit();
});
