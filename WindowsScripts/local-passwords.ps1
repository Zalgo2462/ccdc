#Sets the password of all local user accounts

Get-WmiObject win32_useraccount | Foreach-Object {
([adsi](“WinNT://”+$_.caption).replace(“\”,”/”)).SetPassword(“_REPLACE_”)
}
