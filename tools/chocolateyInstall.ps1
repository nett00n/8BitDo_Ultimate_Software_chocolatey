$packageName = '8BitDo_Ultimate_Software'
$url = 'https://download.8bitdo.com/Ultimate-Software/8BitDo-Ultimate-Software-for-Windows.zip'
$checksum = 'b697c7402ca33f7efd88753873af8a77e3344eafc123d6d753cb1f74595b7deb'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\8BitDo_Ultimate_Software.lnk" "$unzipLocation\8BitDo-Ultimate-Software-for-Windows\8BitDo Ultimate Software.exe"
