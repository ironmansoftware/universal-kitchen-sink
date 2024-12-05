New-PSUEndpoint -Url "/api/diagnostics/error" -Description "Writes an error to the log. " -Method @('GET') -Endpoint {
    Write-Error "This is an error from the API."
} 
New-PSUEndpoint -Url "/api/request/:route" -Description "Endpoint with a dynamic route variable. " -Method @('GET') -Endpoint {
    param($Route)

    $Route
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/body" -Description "An endpoint that uses the request's body." -Method @('GET') -Endpoint {
    param($BodyProperty)
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/headers" -Description "An endpoint that processes a request's headers." -Method @('GET') -Endpoint {
    $Headers["x-test-header"]
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/multi-method" -Description "An endpoint that handles multiple request types." -Method @('DELETE', 'POST', 'PUT') -Endpoint {
    @{
        Method = $Method
        Body   = $Body
    }
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/parameters" -Description "An endpoint that uses a param block." -Method @('GET') -Endpoint {
    param($Param1, $Param2)

    @{
        Param1 = $Param1
        Param2 = $Param2
    }
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/post" -Description "An endpoint that handles a HTTP POST request" -Method @('POST') -Endpoint {
    @{
        Method = $Method
        Body   = $Body
    }
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/request/querystring" -Description "An endpoint that uses the request's query string. " -Method @('GET') -Endpoint {
    param($QueryString)

    $QueryString
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/response/module" -Description "Returns a response from a custom module." -Method @('GET') -Endpoint {
    Get-CustomMessage
} 
New-PSUEndpoint -Url "/api/response/object" -Description "An endpoint that returns an object." -Method @('GET') -Endpoint {
    @{
        Name  = "Adam"
        Title = "Programmer"
    }
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/response/statuscode" -Description "An endpoint that returns a non-200 status code. " -Method @('GET') -Endpoint {
    New-PSUApiResponse -StatusCode 418
} -Documentation "API Documentation" 
New-PSUEndpoint -Url "/api/response/string" -Description "An endpoint that returns a string as a response." -Method @('GET') -Endpoint {
    "Hello, world!!"
} -Documentation "API Documentation"