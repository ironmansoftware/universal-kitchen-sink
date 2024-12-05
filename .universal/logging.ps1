New-PSULoggingTarget -Type "File" -Properties @{
    Path            = 'C:\ProgramData\PowerShellUniversal\log.txt'
    RetentionPeriod = '30'
} 
New-PSULoggingTarget -Type "Database" -Properties @{
} 
New-PSULoggingTarget -Type "File" -Level "Error" -Properties @{
    path   = 'C:\ProgramData\PowerShellUniversal\apierrors.txt'
    format = 'API ERROR: {Message:lj}{NewLine}'
} -Feature "API"