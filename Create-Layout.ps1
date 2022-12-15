Set-Location "aircraft-tbm930-improvement"

# Get all files (and only files) in mod dir, excluding layout.json and manifest.json
$files = Get-ChildItem "." -Recurse -Attributes !Directory -Exclude "layout.json", "manifest.json"

# Create basic JSON structure
$json = @{ 
    "content" = @()
}

# Resolve the relative path of all files
$files = Resolve-Path -Relative $files

foreach ($file in $files) {
    # Create the correct structure
    $entry = @{
        "path" = $file.Replace(".\", "").Replace("\", "/")
        "size" = (Get-ItemProperty $file).Length
        "date" = (Get-ItemProperty $file).LastWriteTime.ToFileTime()
    }
    $json["content"] += $entry
}

# Convert to JSON and output in layout.json
$json | ConvertTo-Json > layout.json

Set-Location ..