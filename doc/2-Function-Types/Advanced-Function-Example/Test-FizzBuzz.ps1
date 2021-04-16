<#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.PARAMETER MinNum
Parameter description

.PARAMETER MaxNum
Parameter description

.EXAMPLE
An example

.NOTES

Dot Source from currect location to launch function.
Example:
. C:\Test-FizzBuzz.ps1
Test-FizzBuzz

#>
function Test-FizzBuzz{
[CmdletBinding()]
    param (
    [Parameter(Mandatory = $false, Position = 0)]
    $MinNum = 1,

    [Parameter(Mandatory = $false, Position = 1)]
    $MaxNum = 100
    )

    for ($i = $MinNum; $i -le $MaxNum; $i++) {
    $output = ""

    if ($i % 3 -eq 0) { $output += "Fizz" }
    if ($i % 5 -eq 0) { $output += "Buzz" }
    if ($output -eq "") { $output = $i }

    Write-output $output
    }
}
