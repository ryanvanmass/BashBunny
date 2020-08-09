#Variables
$temp = hostname
$bunny = ((Get-WmiObject win32_volume -f 'label=''BashBunny''').Name+'loot\SystemCataloger\') 
$file = 'GeneralInfo.txt'

cd $bunny
mkdir $temp
cd $temp

#Hostname
Add-Content -Path $file -Value 'HOSTNAME'
Add-Content -Path $file -Value '--------'
Add-Content -Path $file -Value (hostname)
Add-Content -Path $file -Value ' '

#Networking
Add-Content -Path $file -Value 'NETWORKING'
Add-Content -Path $file -Value '----------'
Add-Content -Path $file -Value (ipconfig /all)
Add-Content -Path $file -Value ' '

#Firewall
Add-Content -Path $file -Value 'FIREWALL'
Add-Content -Path $file -Value '--------'
Add-Content -Path $file -Value (netsh advfirewall show allprofile)
Add-Content -Path $file -Value ' '

#Open Ports
Add-Content -Path $file -Value 'OPEN PORTS'
Add-Content -Path $file -Value '----------'
Add-Content -Path $file -Value 'See OpenPorts.txt'
Get-NetFirewallPortFilter > OpenPorts.txt
Add-Content -Path $file -Value ' '


#Content of C Drive
Add-Content -Path $file -Value 'C DRIVE'
Add-Content -Path $file -Value '-------'
Add-Content -Path $file -Value 'See CDrive.txt'
tree C:\Users > CDrive.txt
