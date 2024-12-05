@{
    Items = @(
        @{
            Name = 'Portal Page'
            Description = 'A simple portal page.'
            Component = @(
                @{
                    Name = '`Basic Widget'
                    Width = 24
                }
            )
            Authenticated = $true
            Role = @('Administrator')
        }
    )
}