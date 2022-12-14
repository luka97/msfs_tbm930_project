# MSFS TBM 930 Project

This is the continue improvement project for the MSFS default TBM 930.

This is a fork of the MixMugz TBM Improvement mod, that you can find [here](https://github.com/mixMugz/msfs_tbm930_project).

### Change ATC call sign to "TBM"
In the real world the TBM 930's ATC call sign is not "Daher" but "TBM". To change this:
1. Open in `<MSFS2020 Install Dir>\Official\OneStore\fs-base\en-US.locPak` in a text editor
2. Search for `"ATCCOM.ATC_NAME_DAHER.0.tts":`
3. Change `Daher` to `TBM`

```json
      "ATCCOM.ATC_NAME_DAHER.0.text": "TBM",
      "ATCCOM.ATC_NAME_DAHER.0.tts": "TBM",
```
**Note:** This will reset after every update of MSFS.
### Remove registration from livery
1. Open in `<Your Livery Dir>\SimObjects\Airplanes\Asobo_TBM930-<LIVERY>\panel.<LIVERY>\panel.cfg` in a text editor
2. Change font_color to **0x00000000** or **none**

```c
// Panel Configuration File
// Asobo Daher TBM930

[VARIATION]
override_base_container = 0

[VPainting01]
size_mm				= 2048,512
texture				= $RegistrationNumber
location 			= exterior
painting00=Registration/Registration.html?font_color=0x00000000, 0, 0, 2048, 512
```
3. Edit your livery aircraft.cfg and add to [FLTSIM.x] section:
```c
panel = "<LIVERY>" ; panel folder
```

## How to Install:

Download the latest release from [here](https://github.com/luka97/msfs_tbm930_project/releases)

## How to Uninstall:

To uninstall just delete the folder "aircraft-tbm930-improvement" from your MSFS Community folder.

