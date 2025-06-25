param (
    [Parameter(Mandatory=$true)][string]$Pattern
)

Get-ChildItem -Recurse *.* | Select-String -Pattern "$Pattern" | ForEach-Object { "$($_.Path):$($_.LineNumber):0" }

$Pattern | Out-File .\log.txt

Get-ChildItem -Recurse *.* | Select-String -Pattern "$Pattern" | ForEach-Object { "$($_.Path):$($_.LineNumber):1" } | Out-File .\log-log.txt
