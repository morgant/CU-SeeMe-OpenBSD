# CU-SeeMe OpenBSD
by Morgan Aldridge <morgant@makkintosshu.com>

![CU-SeeMe screenshot of Morgan in his office](/img/screenshot-20250611-134556.png?raw=true)

## OVERVIEW

This is a faux [CU-SeeMe](https://en.wikipedia.org/wiki/CU-SeeMe) webcam
window which I use for [my Twitch streams](https://twitch.tv/makkintosshu).

It is a shell script wrapper around [`mpv`](https://mpv.io/) which I
developed to show the video feed from my USB webcam, emulating the video
quality of an original [Connectix QuickCam](https://en.wikipedia.org/wiki/QuickCam)
(4-bit grayscale; 320x240 @ 15 fps), while forcing a custom title. It also
includes [mlvwmrc](https://github.com/morgant/mlvwmrc) styles to further mimic
CU-SeeMe (especially displaying the CU-SeeMe icon in the application menu)
when running under the [MLVWM](https://github.com/morgant/mlvwm) X11 window
manager.

**NOTE:** _This has been developed and tested exclusively under
[OpenBSD](https://www.openbsd.org/) for my own use. I don't intend to support
other platforms with this project, but I'm definitely open to splitting the
QuickCam video rendering portion out into a separate project, if there's
enough interest._

## FEATURES

* Emulates a Connectix QuickCam (<https://en.wikipedia.org/wiki/QuickCam>):
    * Extracts only the luma channel (Y) from the video for efficient capture
      in grayscale (see <https://stackoverflow.com/a/77002805>)
    * Scales image down to 320x240 resolution
    * Flips image horizontally
    * Converts to a 16-gray color palette (roughly based on
        <https://www.reddit.com/r/ffmpeg/comments/gmz3s0/convert_video_to_two_color_grayscale/fr6r99j/>)
    * Defaults to capturing and rendering at 15 fps
* Customizes camera settings via [video(1)](https://man.openbsd.org/video.1):
    * Disables backlight compensation
    * Sets white balance temperature
* `mpv` optimizations:
    * Low-latency profile
    * No on-screen display (OSD)
* Automatically enables video recording in the OpenBSD kernel (and disables
    upon exit)
* Custom window title and X11 application name for easier window manager (WM)
    styling

## PREREQUISITES

### Required

* USB webcam or video capture device that supports UVC
* OpenBSD
* [`mpv`](https://openbsd.app/path/multimedia/mpv)
* [`recordctl`](https://github.com/morgant/recordctl)

### Optional

* [mlvwm](https://github.com/morgant/mlvwm)
* [mlvwmrc](https://github.com/morgant/mlvwmrc)

## INSTALLATION

1. Run `make install` to install `CU-SeeMe` to `~/bin`, plus the mlvwmrc
    pixmap and styles into your `~/.mlvwm` directories
2. Edit `~/.mlvwm/apps/.AppsManifest` and add a line containing
    `Read .mlvwm/apps/CU-SeeMe`. **IMPORTANT**: _It must be **after** the
    `mpv` styles!_
3. Restart your `mlvwm` window manager

## USAGE

On my setup (which the defaults are for), it's as simple as executing:

```
$ CU-SeeMe
```

### Options

Some options are supported for when I'm experimenting with settings:

* `-v`: increase verbosity (`-v -v` or `-vv` will show `mpv` output as well)
* `-f`: specify video device input format; the default is `mjpeg`
* `-h <api>`: specify a hardware decoding API to use (see `mpv` `--hwdec`
    option); the default is `auto`, specifying `no` will disable hardware
    decoding
* `-i <device>`: specify the video input device; the default is `/dev/video`
* `-o <driver>`: specify the video output driver to use (see `mpv` `--vo`
    option); the default is `gpu-next`, though I often use `x11`
* `-r <framerate>`: specify the video input & output framerate (i.e. frames
    per second [FPS]); the default is `15`
* `-s <size>`: specify the video output resolution as `<width>x<height>`; the
    default is `320x240`

## RESOURCES

* The original [CU-SeeMe website](https://ftp.icm.edu.pl/packages/cu-seeme/html/Welcome.html)
    is still available on an ICM FTP server
* The original CU-SeeMe applications are available on [Macintosh
    Garden](http://macintoshgarden.org/apps/cu-seeme)
* The Sattlers have an excellent [Connectix
    QuickCam](https://www.sattlers.org/mickey/tech/hardware/connectix-quickcam/index.html)
    reference

## LICENSE

Released under the [MIT License](LICENSE).
