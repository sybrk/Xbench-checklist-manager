# Get the current script file's directory
$scriptDir = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

# Get all .xbckl files in the script's directory
$xbcklFiles = Get-ChildItem -Path $scriptDir -Filter "*.xbckl"

# Define the regex patterns
$searchPattern1 = 'xbench-checklist xmlns:ns1="http://www.w3.org/XML/1998/namespace" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'
$replacePattern1 = 'xbench-checklist version="1.0"'

$searchPattern2 = 'sourceterm'
$replacePattern2 = 'term'

$searchPattern3 = 'targetterm'
$replacePattern3 = 'term'

# Process each .xbckl file
foreach ($file in $xbcklFiles) {
    Write-Host "Processing file: $($file.Name)"

    # Read the content of the file
    $content = Get-Content -Path $file.FullName -Raw

    # Perform the first search and replace operation using regex
    $newContent = $content -creplace $searchPattern1, $replacePattern1

    # Perform the second search and replace operation using regex
    $newContent = $newContent -creplace $searchPattern2, $replacePattern2
	
	# Perform the second search and replace operation using regex
    $newContent = $newContent -creplace $searchPattern3, $replacePattern3

    # Write the modified content back to the file
    Set-Content -Path $file.FullName -Value $newContent
}

Write-Host "Regex replacements completed for all .xbckl files."
