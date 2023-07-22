Add-Type -AssemblyName System.Drawing

$source = "$env:LOCALAPPDATA\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
$destination = "$env:USERPROFILE\Pictures\Wallpaper\Spotlight"
$counter = 1

New-Item -ItemType Directory -Path $destination -ErrorAction Ignore

Get-ChildItem $source | ForEach-Object {
    $newFileName = "$destination\$(Get-Date -Format yyyyMMddHHmmss)_$counter.jpg"
    Copy-Item $_.FullName $newFileName
    $counter++
}
