Add-Type -AssemblyName System.Windows.Forms
$SEL = [System.Windows.Forms.Screen]::AllScreens | Select-String -Pattern "DISPLAY2"
if ($SEL -ne $null)
{
   <# display2 found, so assuming already extended, switch to internal #>
   & DisplaySwitch.exe /external
}
else
{
   <# display2 NOT found, so not extended, switch to extend #>
    & DisplaySwitch.exe /extend
}