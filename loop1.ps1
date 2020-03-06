
#Provide SQLServerName
$SQLServer ="."
#Provide Database Name
$DatabaseName ="master"
#Database User
$User ="MyLogin"
#Database Password
$Password ="####"
#Scripts Folder Path
$FolderPath ="C:\Users\im\Documents\_temp\"

#Loop through the .sql files and run them
foreach ($filename in get-childitem -path $FolderPath -filter "*.sql")
{
    invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -Username $User -Password $Password -InputFile $filename.fullname
    # invoke-sqlcmd –ServerInstance $SQLServer -Database $DatabaseName -InputFile $filename.fullname
    #Print file name which is executed
    $filename
}
