1..10 | % {
    [PSCustomObject]@{
        Name = Get-Random
        Type = "$(Get-Random)_Type"
    }
}