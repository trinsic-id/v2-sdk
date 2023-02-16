Param([string]$ReleaseVersion = "1.9.0", [string]$Version = "1.9.0", [string]$GithubPAT = "")

$Version = $Version.Replace("v","")
$ReleaseVersion = $ReleaseVersion.Replace("v","")
Write-Host "Updating winget msi to $Version"

$DownloadUrl = "https://github.com/trinsic-id/sdk/releases/download/v$ReleaseVersion/trinsic-$Version-x86_64.msi"
$WingetCreate = "wingetcreate.exe"
iwr https://aka.ms/wingetcreate/latest -OutFile $WingetCreate

.\wingetcreate.exe update "trinsic.cli" -s -v $Version -u $DownloadUrl -t $GithubPAT
Remove-Item $WingetCreate
