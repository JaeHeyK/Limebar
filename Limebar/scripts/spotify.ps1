# Original code by https://github.com/Trezub/playing-now-spotify
$processes = Get-Process spotify
$title = (Out-String -InputObject $processes.mainWindowTitle) -replace "`n","" -replace "`r",""
$song = $null
if (-Not $title.Contains('Spotify')) {
  $song = $title
}
cls
Write-Output "$song"