Import-Module ServerManager
Add-WindowsFeature RemoteAccess, Routing, RSAT-RemoteAccess, Web-Server
Get-NetAdapter | Set-NetIPInterface -Forwarding Enabled
Set-Service remoteaccess -StartupType Automatic
Start-Service remoteaccess
