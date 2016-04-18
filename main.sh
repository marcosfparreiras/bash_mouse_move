#!/bin/bash
size=1
while true
do
  # Save mouse coordintes X and Y in $X and $Y variables
  eval $(xdotool getmouselocation --shell)
  # Move mouse
  xdotool mousemove --sync $(($X + $size)) $Y
  # Define next size to move mouse
  size=-$size
  # Wait
  sleep 180
done
