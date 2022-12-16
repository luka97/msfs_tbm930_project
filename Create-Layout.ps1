Set-Location "aircraft-tbm930-improvement"

# Get all files (and only files) in mod dir, excluding layout.json and manifest.json
$files = Get-ChildItem "." -Recurse -Attributes !Directory -Exclude "layout.json", "manifest.json"

# Create basic JSON structure
$json = @{ 
    "content" = @()
}

# Resolve the relative path of all files
$files = Resolve-Path -Relative $files

# Stores the sum of the size of all files in the project
$total_file_size = 0

foreach ($file in $files) {
    # Create the correct structure
    $entry = @{
        "path" = $file.Replace(".\", "").Replace("\", "/")
        "size" = (Get-ItemProperty $file).Length
        "date" = (Get-ItemProperty $file).LastWriteTime.ToFileTime()
    }
    $json["content"] += $entry
    $total_file_size += (Get-ItemProperty $file).Length
}

# Convert to JSON and output in layout.json
$json | ConvertTo-Json > layout.json

if (Test-Path "./manifest.json") {
    $manifest = (Get-Content "manifest.json" | ConvertFrom-Json)
    $manifest.total_package_size = $total_file_size.ToString().PadLeft(20,'0')
    $manifest | ConvertTo-Json > manifest.json
}

Set-Location ..