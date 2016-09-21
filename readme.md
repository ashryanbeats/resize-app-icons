# resize-app-icons

This script makes app icons by resizing copies of a source image for all required App Store sizes.

## Requirements

### zsh
This script assumes you are running `zsh` as your shell because it utilizes the `vared` command. 

This is a big assumption. If happy to change it if you have any ideas.

### ImageMagick
This script required installing the ImageMagick CLI. You can get it here:
[http://www.imagemagick.org/](http://www.imagemagick.org/)


## Structure

- `resize-app-icon.sh` // This script
- `/resized`           // Output destination for the script


## Using the script

The script takes a single argument: the source `png` image to create the resized files from.

If you don't pass it an argument, you can enter a file name when promted.

Use:

```
zsh ./resize-app-icon.sh app-icon.png
```


## Notes

- This script currently only outputs icon sizes for Messages applications.