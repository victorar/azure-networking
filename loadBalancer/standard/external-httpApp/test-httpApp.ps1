
#replace with the URL of your application
$url = "http://externalappname.cloudapp.azure.com/demo.htm"

for ($i=0; $i -le 50; $i++){
    $webResponse = Invoke-WebRequest $url
    $webResponse.Content
    Start-Sleep -Milliseconds 500
}

