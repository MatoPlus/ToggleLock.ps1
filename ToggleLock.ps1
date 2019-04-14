# Author: Ri Xin Yang
# Date: 12/04/2019
# Desc: Toggles lockscreen functionality in windows10. This assumes that there is already an
# exisiting registry in the path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System' called 
# 'DisableLockWorkStation'. Note that this script will require admin permission to be used.


$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System"
$registry = "DisableLockWorkstation"
$currentValue = Get-ItemPropertyValue -Path $registryPath -Name $registry
$value = 0
$wshell = New-Object -ComObject Wscript.Shell

If ($currentValue -eq '1') {
    $value = 0
}
else {
    $value = 1
}

Set-ItemProperty -Path $registryPath -Name $registry -Value $value
if ($value -eq '1') {
    $wshell.Popup("Lockscreen Functionality is now disabled.",0,"Toggle Lockscreen")
}
else {
    $wshell.Popup("Lockscreen Functionality is now enabled.",0,"Toggle Lockscreen")
} 