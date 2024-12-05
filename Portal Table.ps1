param($ModuleName)

Get-Module -Name $ModuleName -ListAvailable | Select-Object Name, Version, Path