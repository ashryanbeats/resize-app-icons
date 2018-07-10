#!/bin/bash

if [ -n convert ]
then
  echo "ImageMagick detected. Here we go..."
else
  echo "Please install the ImageMagick CLI and try again."
  echo "http://www.imagemagick.org/"
  exit 1
fi

if [ "$1" != "" ] # check if arg 1 is present
then
  FILE=$1
else
  echo "Please provide a file as an argument."
  exit 1
fi

filename="${FILE%%.*}"

if [ ! -d "resized" ]
then
  mkdir resized
fi

echo "Resizing $FILE..."

convert $FILE -resize 180x180! resized/${filename}-60x60@3x.png
convert $FILE -resize 120x120! resized/${filename}-60x60@2x.png
convert $FILE -resize 167x167! resized/${filename}-83.5x83.5@2x.png
convert $FILE -resize 76x76! resized/${filename}-76x76@1x.png

convert $FILE -resize 152x152! resized/${filename}-76x76@2x.png
convert $FILE -resize 1024x1024! resized/${filename}-1024x1024@1x.png
convert $FILE -resize 120x120! resized/${filename}-40x40@3x.png
convert $FILE -resize 80x80! resized/${filename}-40x40@2x.png
convert $FILE -resize 40x40! resized/${filename}-40x40@1x.png
convert $FILE -resize 87x87! resized/${filename}-29x29@3x.png
convert $FILE -resize 58x58! resized/${filename}-29x29@2x.png
convert $FILE -resize 29x29! resized/${filename}-29x29@1x.png
convert $FILE -resize 60x60! resized/${filename}-20x20@3x.png
convert $FILE -resize 40x40! resized/${filename}-20x20@2x.png
convert $FILE -resize 20x20! resized/${filename}-20x20@1x.png
