<#1/5/2021
Creator: Justin Neubauer
Program name: UnZipRemoveFiles.ps1
Purpose: To delete all files over 2 days old, then unzip any file with the zip extention and finally delete the zip file
#>

# Deletes any file that is more than 2 days old
Get-ChildItem –Path "<Path To Folder>" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-2))} | Remove-Item

# Unzips any file with the zip extension to the 'path to extract' location
$sourcePath  = 'path of zip file(s)'
$destination = 'path to extract'

Get-ChildItem -Path $sourcePath -Filter '*.zip' -File | ForEach-Object {
    $target = Join-Path -Path $destination -ChildPath $_.BaseName
    $_ | Expand-Archive -DestinationPath $target -Force
}

# Deletes the zip file
Remove-Item –path <Path of zip> -include *.zip