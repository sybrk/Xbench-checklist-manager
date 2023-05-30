# Get the current script file's directory
$scriptDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

# Get all .xbckl files in the script's directory
$xbcklFiles = Get-ChildItem -Path $scriptDir -Filter "*.xbckl"

# Define the regex patterns
$searchPattern1 = '(?s)<term type="source"(.*?)<\/term>(.*?)<term type="target"'
$replacePattern1 = '<sourceterm type="source"$1</sourceterm>$2<term type="target"'

$searchPattern2 = '<term type="target"(.*?)</term>'
$replacePattern2 = '<targetterm type="target"$1</targetterm>'

# Process each .xbckl file
foreach ($file in $xbcklFiles) {
    Write-Host "Processing file: $($file.Name)"

    # Read the content of the file
    $content = Get-Content -Path $file.FullName -Raw

    # Perform the first search and replace operation using regex
    $newContent = $content -creplace $searchPattern1, $replacePattern1

    # Perform the second search and replace operation using regex
    $newContent = $newContent -creplace $searchPattern2, $replacePattern2

    # Write the modified content back to the file
    Set-Content -Path $file.FullName -Value $newContent
}

Write-Host "Regex replacements completed for all .xbckl files."
