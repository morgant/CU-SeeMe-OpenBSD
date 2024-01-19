# CU-SeeMe OpenBSD
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

This is a faux [CU-SeeMe](https://en.wikipedia.org/wiki/CU-SeeMe) webcam window which I use for [my Twitch streams](https://twitch.tv/makkintosshu). It's just a wrapper around `mpv` which I developed under [OpenBSD](https://www.openbsd.org/) to show the video feed from my USB webcam while forcing a small window size, grayscale video, and a custom title. It also includes [mlvwmrc](https://github.com/morgant/mlvwmrc) styles to further mimic CU-SeeMe when running under the [MLVWM](https://github.com/morgant/mlvwm) X11 window manager.

## Installation

1. Run `make install` to install `CU-SeeMe` to `~/bin`, plus the mlvwmrc pixmap & styles into your `~/.mlvwm` directories
2. Edit `~/.mlvwm/apps/.AppsManifest` and add a line containing `Read .mlvwm/apps/CU-SeeMe`. **IMPORTANT**: It must be _after_ the `mpv` styles!
3. Restart your `mlvwm` window manager

## LICENSE

Released under the [MIT License](LICENSE).
