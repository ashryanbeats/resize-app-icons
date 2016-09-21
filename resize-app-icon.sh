#!/bin/bash

if [ command -v convert >/dev/null 2>&1 ]
then
  echo "ImageMagick detected. Here we go..."
else
  echo "Please install the ImageMagick CLI and try again."
  echo "http://www.imagemagick.org/"
  exit 1
fi

if [ -z "$1" ] # if arg 1 is a null string
then
  echo "Please provide a source image:"
  vared FILE #vared allows automplete in zsh
else
  FILE=$1
fi

echo "Resizing $FILE..."

convert $FILE -resize 54x40! resized/Icon-App-27x20@2x.png #Messages
convert $FILE -resize 81x60! resized/Icon-App-27x20@3x.png #Messages
convert $FILE -resize 64x48! resized/Icon-App-32x24@2x.png #Messages
convert $FILE -resize 96x72! resized/Icon-App-32x24@3x.png #Messages
convert $FILE -resize 120x90! resized/Icon-App-60x45@2x.png #iPhone
convert $FILE -resize 180x135! resized/Icon-App-60x45@3x.png #iPhone
convert $FILE -resize 134x100! resized/Icon-App-67x50@2x.png #iPad
convert $FILE -resize 148x110! resized/Icon-App-74x55@2x.png #iPad Pro
convert $FILE -resize 1024x768! resized/Icon-App-1024x768.png #Messages App Store

exit 0