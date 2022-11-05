// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

addOnClicks()

function addOnClicks() {
  let cells = document.getElementsByClassName("cell_button")
  
  for (var i = 0; i < cells.length; i++) {
    cells[i].addEventListener("click", showColorMenu)
  }
}

function showColorMenu() {
  document.getElementById("color_menu").style.display = "block"
}