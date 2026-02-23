$dir = (get-item '.' ).parent.FullName
Write-Host ($dir)
foreach($modFolder in  Get-ChildItem -Path $dir"\mods" -Directory -Name) {
  $infoPath = $dir + "\mods\" + $modFolder + "\info.json"
  $modSettings =  (Get-Content $infoPath | Out-String | ConvertFrom-Json)
  $modNeedFolder = $modSettings.Name +"_" +$modSettings.version

  $ModDir = $dir + "\mods\" + $modFolder
  $ModFile = $env:APPDATA + "\Factorio\mods\" + $modNeedFolder + ".zip"
  $ttt = "copmress [" + $ModDir + "] to [" + $ModFile + "]"
    Write-Host ($ttt)
    Compress-Archive -Path $ModDir -DestinationPath $ModFile -CompressionLevel Fastest -Update
}
foreach($modFolder in  Get-ChildItem -Path $dir"\custom-mods" -Directory -Name) {
  $infoPath = $dir + "\custom-mods\" + $modFolder + "\info.json"
  $modSettings =  (Get-Content $infoPath | Out-String | ConvertFrom-Json)
  $modNeedFolder = $modSettings.Name +"_" +$modSettings.version

  $ModDir = $dir + "\custom-mods\" + $modFolder
  $ModFile = $env:APPDATA + "\Factorio\mods\" + $modNeedFolder + ".zip"
  $ttt = "copmress [" + $ModDir + "] to [" + $ModFile + "]"
    Write-Host ($ttt)
    Compress-Archive -Path $ModDir -DestinationPath $ModFile -CompressionLevel Fastest -Update
}

$SettFile = $dir + "\mods\mod-list.json"
$SettDest = $env:APPDATA + "\Factorio\mods\"
Copy-Item $SettFile -Destination $SettDest
$SettFile = $dir + "\mods\mod-settings.dat"
Copy-Item $SettFile -Destination $SettDest