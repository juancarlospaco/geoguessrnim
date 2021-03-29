# GeoGuessrNim Browser Plugin

- Hide Ads making map view full-page with Free accounts.
- Filters for the StreetView and [Mapillary](https://www.mapillary.com) maps.
- 100% [Nim](http://nim-lang.org). Pull Requests welcome if you have more ideas.

![](https://raw.githubusercontent.com/juancarlospaco/geoguessrnim/nim/screenshot.jpg)


![](https://raw.githubusercontent.com/juancarlospaco/geoguessrnim/nim/screenshot2.jpg)


![](https://raw.githubusercontent.com/juancarlospaco/geoguessrnim/nim/firefo.jpg)


# Chromium

- Compile `nim js -d:danger index.nim`.
- Open `chrome://extensions` in Chromium.
- Enable `Developer mode`, click on `Load Unpacked` button.
- Open the folder of this repo.
- Restart browser and go to https://www.geoguessr.com and play.

# Firefox

- Compile `nim js -d:danger index.nim`.
- Open `about:debugging#/runtime/this-firefox` in Firefox.
- Click on `Load Temporary Addon` button.
- Open the folder of this repo.
- Restart browser and go to https://www.geoguessr.com and play.


# Play for Free

- [Mapillary](https://www.mapillary.com) maps are Free https://www.geoguessr.com/free
- Go to https://www.reddit.com/r/geoguessr/?f=flair_name%3A%22Competitions%22 and click on the Challenge links posted.


# Learn to Win

- https://geotips.net


# Notes

The idea is that sometimes the photos of the streets are too dark,
then it is harder to guess your location in game,
the filters can make it easy to see without reloading the page.

Also is a minimal example of a browser plugin written in [Nim](http://nim-lang.org).

Sometimes the page re-renders itself hiding the options,
reload the page and the options will show up again.
