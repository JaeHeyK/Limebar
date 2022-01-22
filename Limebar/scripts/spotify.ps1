# Original code by https://github.com/Trezub/playing-now-spotify
while ($true) {
  $processes = Get-Process spotify
  $title = (Out-String -InputObject $processes.mainWindowTitle) -replace "`n","" -replace "`r",""
  $song = $null
  if (-Not $title.Contains('Spotify')) {
      $song = $title
  }
  cls
  Write-Output "$song"
  Start-Sleep -Seconds 1
}