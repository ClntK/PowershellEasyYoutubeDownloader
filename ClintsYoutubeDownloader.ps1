# Filename: ClintsYoutubeDownloader.ps1
# Updated: 9-22-2022
# Author: Clint Kline
# Purpose: Download youtube videos without ads


Write-Host "`n`n"
Write-Host "########## CLINT'S EASY YOUTUBE DOWNLOADER ##########"

$YTVideoUrl = Read-Host "`n`nEnter the youtube share link here(format: youtube.com/watch?...)"
$DownloadPath = Get-Location
$url = "https://youtube-dl.org/downloads/latest/youtube-dl.exe"
$OutputFile = "$($DownloadPath)" + '\' + "youtube-dl.exe"

$SingleTest = Invoke-WebRequest -uri $YTVideoUrl -UseBasicParsing
$urlinfo = $Singletest.Content
$leftindex = $URLinfo.indexof('<title>')
$rightindex = $URLinfo.indexof(' - YouTube</title>')

$TrackName = $urlinfo.substring($leftindex+7, $rightindex-$leftindex-7)

Write-Host "Downloading `'$($TrackName)`'"

Write-Host "`n`n"
Write-Host "########## VIDEO INFO ##########"
Write-Host "`n`n"
Write-Host "TITLE:"
./youtube-dl.exe $YTVideoUrl --get-title 
Write-Host "`n"
Write-Host "DESCRIPTION:"
./youtube-dl.exe $YTVideoUrl --get-description 
Write-Host "`n"
Write-Host "DURATION:"
./youtube-dl.exe $YTVideoUrl --get-duration
Write-Host "`n`n"
./youtube-dl.exe $YTVideoUrl
Write-Host "`n`n"
