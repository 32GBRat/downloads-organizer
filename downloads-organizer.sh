#!/bin/bash

# Set default config directory
config_dir="$HOME/.config"

# If XDG_CONFIG_HOME isn't empty set it as config directory
if [[ -n "${XDG_CONFIG_HOME}" ]]; then
    config_dir=$XDG_CONFIG_HOME
fi

# Create config file
mkdir -p ${config_dir}/downloads-organizer
touch ${config_dir}/downloads-organizer/organizer.config

# Set defaults
ARCHIVES_NAME="Archives"
DOCUMENTS_NAME="Documents"
IMAGES_NAME="Images"
AUDIO_NAME="Audio"
SCRIPTS_NAME="Scripts"
VIDEO_NAME="Video"
OTHER_NAME="Other"

# Load config file
. ${config_dir}/downloads-organizer/organizer.config

# Create folders for files to go in
mkdir "$ARCHIVES_NAME" &>/dev/null
mkdir "$DOCUMENTS_NAME" &>/dev/null
mkdir "$IMAGES_NAME" &>/dev/null
mkdir "$AUDIO_NAME" &>/dev/null
mkdir "$SCRIPTS_NAME" &>/dev/null
mkdir "$VIDEO_NAME" &>/dev/null
mkdir "$OTHER_NAME" &>/dev/null

# Move files into correct folders
mv *.rar *.zip *.tar *.tar.gz *.gz *.jar *.exe -t "$ARCHIVES_NAME" &>/dev/null
mv *.txt *.asc *.html *.htm *.doc *.csv *.md *.log *.pdf *.xml *.ini *.json *.xml *.yaml -t "$DOCUMENTS_NAME" &>/dev/null
mv *.gif *.ico *.jpeg *.jxl *.kra *.png *.raw *.svg -t "$IMAGES_NAME" &>/dev/null
mv *.wav *.mp1 *.mp2 *.mp3 -t "$AUDIO_NAME" &>/dev/null
mv *.cmd *.bat *.btm *.c *.cs *.css *.cpp *.fs *.dart *.go *.js *.py *.lua *.kt *.php *.py *.pyc *.r *.rb *.vbs *.tss *.sh -t "$SCRIPTS_NAME" &>/dev/null
mv *.wav *.avi *.mp1 *.mp2 *.mp3 -t "$AUDIO_NAME" &>/dev/null
mv *.* -t "$OTHER_NAME" &>/dev/null

# Remove empty folders
rmdir "$ARCHIVES_NAME" &>/dev/null
rmdir "$DOCUMENTS_NAME" &>/dev/null
rmdir "$IMAGES_NAME" &>/dev/null
rmdir "$AUDIO_NAME" &>/dev/null
rmdir "$SCRIPTS_NAME" &>/dev/null
rmdir "$VIDEO_NAME" &>/dev/null
rmdir "$OTHER_NAME" &>/dev/null

echo "Directory organized."