$address = Test-Connection -ComputerName (hostname) -Count 1  | Select -ExpandProperty IPV4Address
Write-Host $address
