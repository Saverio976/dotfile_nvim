param (
    [Parameter(Mandatory=$true)][string]$Pattern
)

Get-ChildItem -Recurse *.* | Select-String -Pattern "$Pattern" | ForEach-Object { "$($_.Path):$($_.LineNumber)" }
