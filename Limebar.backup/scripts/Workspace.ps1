. .\VirtualDesktop.ps1

$currentIndex = $(Get-DesktopIndex -Desktop  $(Get-CurrentDesktop))
$desktopCount = $(Get-DesktopCount)

$workspace = "○" * ($desktopCount-1)
$workspace = $workspace.insert($currentIndex-1,"●")
$result =$workspace.ToCharArray() -join " "
Write-Output "1"