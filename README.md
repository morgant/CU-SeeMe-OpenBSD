# CU-SeeMe OpenBSD
by Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

This is a faux [CU-SeeMe](https://en.wikipedia.org/wiki/CU-SeeMe) webcam window which I use for [my Twitch streams](https://twitch.tv/makkintosshu). It's just a wrapper around `mpv` which I developed under [OpenBSD](https://www.openbsd.org/) to show the video feed from my USB webcam and emulate an original [Connectix QuickCam](https://en.wikipedia.org/wiki/QuickCam) (4-bit grayscale; 320x240 @ 15 fps) while forcing a custom title. It also includes [mlvwmrc](https://github.com/morgant/mlvwmrc) styles to further mimic CU-SeeMe when running under the [MLVWM](https://github.com/morgant/mlvwm) X11 window manager.

## Installation

1. Run `make install` to install `CU-SeeMe` to `~/bin`, plus the mlvwmrc pixmap & styles into your `~/.mlvwm` directories
2. Edit `~/.mlvwm/apps/.AppsManifest` and add a line containing `Read .mlvwm/apps/CU-SeeMe`. **IMPORTANT**: It must be _after_ the `mpv` styles!
3. Restart your `mlvwm` window manager

## Resources

* The original [CU-SeeMe website](https://ftp.icm.edu.pl/packages/cu-seeme/html/Welcome.html) is still available on an ICM FTP server
* The original CU-SeeMe applications are available on [Macintosh Garden](http://macintoshgarden.org/apps/cu-seeme) and [Macintosh Repository](https://www.macintoshrepository.org/39602-cu-seeme)
* The Sattlers have an excellent [Connectix QuickCam](https://www.sattlers.org/mickey/tech/hardware/connectix-quickcam/index.html) reference

## LICENSE

Released under the [MIT License](LICENSE).
