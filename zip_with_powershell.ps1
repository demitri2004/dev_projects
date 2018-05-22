$source = "C:\Development\test_zip_cmd"
$destination = "C:\Development\test_zip_cmd.zip"

# If the archive already exists, an IOException exception is thrown.
if(Test-Path $destination) {
    Remove-Item -Path $destination -Force -Recurse -Confirm:$false
}

[Reflection.Assembly]::LoadWithPartialName( "System.IO.Compression.FileSystem" )
[System.IO.Compression.ZipFile]::CreateFromDirectory($source, $destination)