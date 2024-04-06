# Downloads organizer
Simple linux only script to organize files into directories based on their type.

## Install
1. Clone this repo
2. Make the script executable using `chomd +x downloads-organizer.sh`
3. Rename the file to whatever name the resulting command name should be with `mv downloads-organizer.sh your_desired_name`
4. Copy the resulting file to the `/usr/bin/` directory using `cp your_desired_name /usr/bin/`

## Configuration
All configuration is done using `organizer.config` file located by default (if the XDG_CONFIG_HOME variable isn't set) in the `~/.config/downloads-organizer/` directory.

Currently supported configuration variables are `ARCHIVES_NAME`, `DOCUMENTS_NAME`, `IMAGES_NAME`, `AUDIO_NAME`, `SCRIPTS_NAME`, `VIDEO_NAME`, `OTHER_NAME`. All of them are used to set names of the directories that are created for files to be sorted to.