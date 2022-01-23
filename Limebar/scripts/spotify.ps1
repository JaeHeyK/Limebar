# Original code by https://github.com/Trezub/playing-now-spotify
$processes = Get-Process spotify -ErrorAction SilentlyContinue -ErrorVariable ProcessError
if($ProcessError) {
    Write-Output "…"
} else {
    $title = (Out-String -InputObject $processes.mainWindowTitle) -replace "`n","" -replace "`r",""
    $song = $null
        if (-Not $title.Contains('Spotify')) {
            $song = $title
            $song | Out-File -encoding ascii .\currentSong.txt -NoNewLine
            Write-Output "♬ $song"
        } else {
            $song = Get-Content .\currentSong.txt -Raw
            Write-Output "⏸ $song"
        }
}