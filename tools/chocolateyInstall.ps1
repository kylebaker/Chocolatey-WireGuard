$ErrorActionPreference = 'Stop'

$packageName    = 'wireguard'
$fileType       = 'msi'
$url64          = "https://download.wireguard.com/windows-client/wireguard-amd64-0.0.35.msi"
$checksum64     = ''
$checksumType64 = 'sha256'
$url            = "https://download.wireguard.com/windows-client/wireguard-x86-0.0.35.msi"
$checksum       = ''
$checksumType   = 'sha256'
$silentArgs     = '/qn'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
    packageName     = $packageName
    fileType        = $fileType
    url             = $url
    url64           = $url64
    checksum        = $checksum
    checksum64      = $checksum64
    checksumType    = $checksumType
    checksumType64  = $checksumType64
    validExitCodes  = $validExitCodes
    silentArgs      = $silentArgs

}

Install-ChocolateyPackage @packageArgs