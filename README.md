# CU-SeeMe OpenBSD
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

This is a faux CU-SeeMe webcam window for OpenBSD which I use for [my Twitch streams](https://twitch.tv/makkintosshu). It's just a wrapper around `mpv` which forces a small window size, custom title, and grayscale video from my USB webcam. It also includes some [mlvwmrc](https://github.com/morgant/mlvwmrc) styles to further mimic CU-SeeMe when running under the [MLVWM](https://github.com/morgant/mlvwm) X11 window manager.

## Installation

1. Run `make install` to install `CU-SeeMe` to `~/bin`, plus the mlvwmrc pixmap & styles into your `~/.mlvwm` directories
2. Edit `~/.mlvwm/apps/.AppsManifest` and add a line containing `Read .mlvwm/apps/CU-SeeMe`. **IMPORTANT**: It must be _after_ the `mpv` styles!
3. Restart your `mlvwm` window manager

## LICENSE

Released under the [MIT License](LICENSE).
