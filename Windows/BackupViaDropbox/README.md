# Name
Backup Via Dropbox

# Author
Ryan_Van_Mass

# Credit
Hak5Darren

# Description
Backup the Current Users Documents Directory to Dropbox

# Target
OS: Windows

Tested On: Windows 10

# Configuration
Change Dropbox API key in exfil.ps1 to correct key for backing up

# Stages
## Setup
Sets the attack mode to HID and Storage

## Attack 
Runs a powershell script that will back up the current users Documetns directory to dropbox using the dropbox api

## Clean Up
Removes Runline Entry from running script
