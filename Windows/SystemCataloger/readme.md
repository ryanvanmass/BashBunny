# Name
WindowsSystemCataloger

# Author
Ryan_Van_Mass

# Description
Collects basic System Information

# Target
OS: Windows

Tested On: Windows 10 

# Information Collected
* Hostname
* All IP information
* If the Windows FIrewall is on
* Open Ports
* scan of User Directory

# Loot
## Directory
By Defualt the payload will save the loot to the /loot/SystemCataloger/TargetHostName

## Files
The payload will by defualt create 3 files:

|     Filename    |               Information Collected               |
|:---------------:|:-------------------------------------------------:|
| GeneralInfo.txt | Hostname, Ip Configuration, and Firewall settings |
| OpenPorts.txt   | Open Firewall Ports                               |
| CDrive.txt      | User Directory Scan                               |

# NOTE
OPEN PORTS NOT CURRENTLY IMPLEMENTED JUST NEED TO ADD UAC BYPASS AND IT SHOULD WORK
