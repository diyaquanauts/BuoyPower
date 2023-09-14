#!/bin/bash

# Generate SVGs using tracespace
tracespace render *.gbr -o images

# Go to images directory
cd images || exit

# Generate JSON file with the list of SVG filenames
ls *.svg | jq -R -s -c 'split("\n")[:-1]' > svg_list.json

# Optionally, move the JSON to another location
mv svg_list.json ../svg_list.json

