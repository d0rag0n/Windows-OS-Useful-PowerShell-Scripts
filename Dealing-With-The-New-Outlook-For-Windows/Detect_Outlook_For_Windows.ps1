#=============================================================================================================================
#
# Script Name:      Detect_Outlook_For_Windows.ps1
# Description:      Purpose of this script is to detect if the "New Outlook" for Windows app is installed.
# Notes:            Based on Microsoft's instructions @ #https://learn.microsoft.com/en-us/microsoft-365-apps/outlook/get-started/control-install#block-new-outlook-preinstall-on-windows
# Version:          1.0
# Author:           Richard Leon | Github: d0rag0n | LinkedIn: RicardusLeo 
# Creation Date:    July 13th, 2025
#
#=============================================================================================================================

if (Get-AppxPackage Microsoft.OutlookForWindows -AllUsers)
{
    Write-Host "Outlook for Windows found!"
    exit 1
}
else
{
    Write-Host "Outlook for Windows not found!"
    exit 0
}