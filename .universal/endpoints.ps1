New-PSUEndpoint -Url "/api/response/string" -Description "An endpoint that returns a string as a response." -Method @('GET') -Endpoint {
"Hello, world!"
} 
New-PSUEndpoint -Url "/api/response/object" -Description "An endpoint that returns an object." -Method @('GET') -Endpoint {
 @{
    Name = "Adam"
    Title = "Programmer"
 }
} -ErrorAction "SilentlyContinue"