New-PSUEndpoint -Url "/api/response/string" -Description "An endpoint that returns a string as a response." -Method @('GET') -Endpoint {
"Hello, world!"
} 
New-PSUEndpoint -Url "/api/response/object" -Description "An endpoint that returns an object." -Method @('GET') -Endpoint {
@{
    Name = "Adam"
    Title = "Programmer"
 }
} -ErrorAction "SilentlyContinue" 
New-PSUEndpoint -Url "/api/response/statuscode" -Description "An endpoint that returns a non-200 status code. " -Method @('GET') -Endpoint {
# Enter your script to process requests.
} -ErrorAction "SilentlyContinue" 
New-PSUEndpoint -Url "/api/request/headers" -Description "An endpoint that processes a request's headers." -Method @('GET') -Endpoint {
# Enter your script to process requests.
} -ErrorAction "SilentlyContinue" 
New-PSUEndpoint -Url "/api/request/querystring" -Description "An endpoint that uses the request's query string. " -Method @('GET') -Endpoint {
# Enter your script to process requests.
} -ErrorAction "SilentlyContinue" 
New-PSUEndpoint -Url "/api/request/body" -Description "An endpoint that uses the request's body." -Method @('GET') -Endpoint {
# Enter your script to process requests.
} -ErrorAction "SilentlyContinue" 
New-PSUEndpoint -Url "/api/request/parameters" -Description "An endpoint that uses a param block." -Method @('GET') -Endpoint {
# Enter your script to process requests.
} -ErrorAction "SilentlyContinue" 