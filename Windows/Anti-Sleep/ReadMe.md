# Name
Anti-Sleep

# Scripter
Ryan_Van_Mass

# Description
Prevents PC from going to sleep or  auto-locking

# Target
OS: Windows

Tested On: Windows 10 but should work on any version

# Configuration
No Configuration is needed the payload will run out the the box

Note: Cucumber is enabled by defualt to allow better thermals when deployed for long periods of time

# Stages
## Set up
* Sets attack mode to HID
* Enabled Cucumber

## Attack
Runs an infinate loop that every 5 min by defualt wil press the windows key and then one sec later it will press it again

# LED States
| LED              | Meaning                   |
|------------------|---------------------------|
| Magenta          | Setting up                |
| Red Flashing     | 5 Seconds till execution  |
| Yellow Flashing  | Sleeping                  |
| Solid Red        | There was an error        |
