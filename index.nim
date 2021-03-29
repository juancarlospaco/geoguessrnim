import std/dom

const filters_css = [
  "none", "blur(1px)", "grayscale(1)", "invert(1)", "sepia(1)",
  "brightness(2)", "brightness(4)", "contrast(2)", "contrast(4)",
  "hue-rotate(90deg)", "hue-rotate(180deg)", "saturate(2)", "saturate(4)"]

let
  filterSelect = document.createElement("select")
  ads = document.querySelectorAll("footer.game-layout__in-game-ad")[0]
  headr = document.querySelectorAll("header.header")[0]

proc changeFilters(_: Event) =
  let canva =
    if document.querySelectorAll("canvas.widget-scene-canvas").len == 0:
      document.querySelector("div#mapillary-container")           # Mapillary mode.
    else:
      document.querySelectorAll("canvas.widget-scene-canvas")[0]  # StreetView mode.
  canva.style.filter = document.querySelector("#filterSelect").value

proc main() =
  for filters in filters_css:
    let option = document.createElement("option")
    option.value = filters
    option.innerText = filters
    filterSelect.appendChild(option)
  filterSelect.onclick = changeFilters
  filterSelect.id = "filterSelect"
  headr.appendChild(filterSelect)
  try:
    ads.style.display = "none"
  except: discard

when isMainModule:
  main()
