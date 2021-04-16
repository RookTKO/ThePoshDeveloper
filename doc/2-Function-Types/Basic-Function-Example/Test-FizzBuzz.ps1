<#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.EXAMPLE
An example

.NOTES

Dot Source from currect location to launch function.
Example:
. C:\Test-FizzBuzz.ps1
Test-FizzBuzz

#>
function Test-FizzBuzz{
    for ($i = 1; $i -le 100; $i++) {
    $output = ""

    if ($i % 3 -eq 0) { $output += "Fizz" }
    if ($i % 5 -eq 0) { $output += "Buzz" }
    if ($output -eq "") { $output = $i }

    Write-output $output
    }
}