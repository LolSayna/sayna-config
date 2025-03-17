#!/bin/bash
# dont know what needs to be installed for this to work, tried a lot
# Convert all HEIC files in the current directory to JPEG
for file in *.heic *.HEIC; do
	# Check if the file exists to handle the case where no HEIC files are present
	if [ -e "$file" ]; then
		# Use ffmpeg to convert the HEIC file to a JPEG file
		# The output filename is the same as the input, with a .jpg extension
		convert "$file" "${file%.*}.jpg"
		mv $file heic/
	fi
done
