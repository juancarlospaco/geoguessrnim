# GeoGuessrNim Browser Plugin

- Hide Ads with Free accounts.
- Filters for the StreetView map.
- 100% [Nim](http://nim-lang.org). Pull Requests welcome if you have more ideas.

![](https://raw.githubusercontent.com/juancarlospaco/geoguessrnim/nim/screenshot.jpg)


# Use

- Compile `nim js -d:danger index.nim`.
- Open `chrome://extensions` in Chromium.
- Enable `Developer mode`, click on `Load Unpacked` button.
- Open the folder of this repo.
- Restart browser and go to https://www.geoguessr.com and play.


# Notes

The idea is that sometimes the photos of the streets are too dark,
then it is harder to guess your location in game,
the filters can make it easy to see without reloading the page.

Also is a minimal example of a browser plugin written in [Nim](http://nim-lang.org).

Sometimes the page re-renders itself hiding the options,
reload the page and the options will show up again.
