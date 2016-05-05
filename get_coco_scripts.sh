#!/usr/bin/env sh
# This script downloads the coco evaluation server scripts.
# Skip this if you already have the coco-caption scripts.

echo "Downloading coco evaluation scripts [~112MB] ..."

git clone https://github.com/tylin/coco-caption.git

echo "Done."
