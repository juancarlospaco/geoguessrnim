import std/[dom, json]

const filters_css = [
  "none", "blur(1px)", "grayscale(1)", "invert(1)", "sepia(1)",
  "brightness(2)", "brightness(4)", "contrast(2)", "contrast(4)",
  "hue-rotate(45deg)", "hue-rotate(90deg)", "hue-rotate(180deg)",
  "saturate(2)", "saturate(4)"]

template hideAds() =
  try:    document.querySelectorAll("footer.game-layout__in-game-ad")[0].style.display = "none"
  except: discard

proc changeFilters(_: Event) =
  let canva =
    if document.querySelectorAll("canvas.widget-scene-canvas").len == 0:
      document.querySelector("div#mapillary-container")           # Mapillary mode.
    else:
      document.querySelectorAll("canvas.widget-scene-canvas")[0]  # StreetView mode.
  canva.style.filter = document.querySelector("#filterSelect").value

template addFilters() =
  let filterSelect = document.createElement("select")
  filterSelect.id = "filterSelect"
  filterSelect.onclick = changeFilters
  for filters in filters_css:
    let option = document.createElement("option")
    option.value = filters
    option.innerText = filters
    filterSelect.appendChild(option)
  document.querySelectorAll("header.header")[0].appendChild(filterSelect)

proc main(_: Event) =
  addFilters()
  hideAds()

when isMainModule:
  window.addEventListener("load", main)
