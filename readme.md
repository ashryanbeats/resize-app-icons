# resize-app-icons

This script makes app icons by resizing copies of a source image for all required App Store sizes (currently Message Application icon sizes only).


## Requirements

### ImageMagick
This script requires installing the ImageMagick CLI. 

You can get it here:
[http://www.imagemagick.org/](http://www.imagemagick.org/)

The script will check for ImageMagick before running.


## Structure

- `resize-app-icon.sh` // This script
- `/resized`           // Output destination for the script


## Using the script

The script takes a single argument: the source `png` image to create the resized files from.

Usage:

```
bash ./resize-app-icon.sh app-icon.png
```
