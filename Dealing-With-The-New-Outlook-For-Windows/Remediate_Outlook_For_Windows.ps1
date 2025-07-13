#=============================================================================================================================
#
# Script Name:      Remediate_Outlook_For_Windows.ps1
# Description:      Purpose of this script is to uninstall the "New Outlook".
# Notes:            Based on Microsoft's instructions @ #https://learn.microsoft.com/en-us/microsoft-365-apps/outlook/get-started/control-install#block-new-outlook-preinstall-on-windows
# Version:          1.0
# Author:           Richard Leon | Github: d0rag0n | LinkedIn: RicardusLeo 
# Creation Date:    July 13th, 2025
#
#=============================================================================================================================

try
{
    Remove-AppxProvisionedPackage -AllUsers -Online -PackageName (Get-AppxPackage Microsoft.OutlookForWindows).PackageFullName -EA Stop | Out-NUll
    Remove-Item -LiteralPath "HKLM:\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\Orchestrator\UScheduler_Oobe\OutlookUpdate" -Recurse -Force -EA Stop | Out-NUll
    Write-Host "Remediation succesfully executed."
}
catch
{
    Write-Host "Error: Executing $($MyInvocation.MyCommand.Name). $($_.Exception.GetType().FullName), $($_.Exception.Message)"
}