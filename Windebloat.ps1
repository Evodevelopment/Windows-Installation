#“Cannot be loaded because running scripts is disabled on this system”? Default setting will prevent you from running any PowerShell script on your computer, even scripts that you have written yourself.

powershell -ExecutionPolicy Bypass -File Windebloat.ps1

$appname = @(
"*BingWeather*"

"*News*"

"*Finance*"

"*GetHelp*"

"*GetStarted*"

"*3DViewer*"

"*OfficeHub*"

"*Solitaire*"

"*StickyNotes*"

"*MixedReality*"

"*OneNote*"

"*People*"

"*SkypeApp*"

"*Wallet*"

"*WindowsAlarms*"

"*FeedbackHub*"

"*WindowsMaps*"

"*Xbox*"

"*YourPhone*"

"*ZuneMusic*"

"*ZuneVideo*"

)

ForEach($app in $appname){

Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue

}

Start-Sleep -Seconds 70

ForEach($app in $appname){

Get-AppxProvisionedPackage -Online | where {$_.PackageName -like $app} | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
}
