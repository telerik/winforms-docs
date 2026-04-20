
$MyPat  = $(GITHUB_TOKEN)
$PipelineName = "WinForms_Documentation_Code_CI"
$Branch = "main"
$ArtifactName_CS = "SamplesCS"    
$ArtifactName_VB = "SamplesVB"    
$Company = "prgs-devtools"
$Project = "DevTools"

# Build Auth header

#$B64Pat = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes(":$MyPat"))
$B64Pat = [Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$MyPat"))
$h = @{"Authorization" = "Basic " + $B64Pat}

# Get build definition id
Write-Output ("https://dev.azure.com/$($Company)/$($Project)/_apis/build/definitions?name=$($PipelineName)&api-version=7.0") 

$response = Invoke-WebRequest -Uri "https://dev.azure.com/$($Company)/$($Project)/_apis/build/definitions?name=$($PipelineName)&api-version=7.0" -Method Get -Headers $h -UseBasicParsing

if (( $? -eq $false ) -or ( $response.StatusCode -ne 200 ))
{
    if ($response.StatusCode -ne 200)
    {
        Write-Output (":| Error: " + $response.StatusCode) >> $LogFile
        exit 1
    }
    $msg = $Error[0].Exception.Message
    Write-Output ":| $(Get-Date)      Error: $($msg)" >> $LogFile   
}

$response_json = ($response.Content | ConvertFrom-Json)
$DefinitionId = $response_json.value.id

# Get latest build id for named branch

$response = Invoke-WebRequest -Uri "https://dev.azure.com/$($Company)/$($Project)/_apis/build/latest/$($DefinitionId)?branchName=$($Branch)&api-version=7.0-preview" -Method 'GET' -Headers $h -UseBasicParsing
if (( $? -eq $false ) -or ( $response.StatusCode -ne 200 ))
{
    if ($response.StatusCode -ne 200)
    {
        Write-Output (":| Error: " + $response.StatusCode) >> $LogFile
        exit 1
    }
    $msg = $Error[0].Exception.Message
    Write-Output ":| $(Get-Date)      Error: $($msg)" >> $LogFile   
}
$response_json = ($response.Content | ConvertFrom-Json)
$BuildId = $response_json.id

# Get latest named artifact

$response = Invoke-WebRequest -Uri "https://dev.azure.com/$($Company)/$($Project)/_apis/build/builds/$($BuildId)/artifacts?artifactName=$($ArtifactName_CS)&api-version=7.0" -Method 'GET' -Headers $h -UseBasicParsing
if (( $? -eq $false ) -or ( $response.StatusCode -ne 200 ))
{
    if ($response.StatusCode -ne 200)
    {
        Write-Output (":| Error: " + $response.StatusCode) >> $LogFile
        exit 1
    }
    $msg = $Error[0].Exception.Message
    Write-Output ":| $(Get-Date)      Error: $($msg)" >> $LogFile
}
$response_json = ($response.Content | ConvertFrom-Json)
$response_json.resource.downloadUrl

# Download latest named artifact

# Download CS files

$Download_CS = "..\..\snippets\SamplesCS.zip"
$response = Invoke-WebRequest -Uri $response_json.resource.downloadUrl -Method 'GET' -Headers $h -UseBasicParsing -OutFile "$($Download_CS)"

if ( $? -eq $false )
{
    $msg = $Error[0].Exception.Message
    Write-Output ":| $(Get-Date)      Error: $($msg)" >> $LogFile
    exit 1
}

# Download VB files

$Download_VB = "..\..\snippets\SamplesVB.zip"
$response = Invoke-WebRequest -Uri $response_json.resource.downloadUrl -Method 'GET' -Headers $h -UseBasicParsing -OutFile "$($Download_VB)"

if ( $? -eq $false )
{
    $msg = $Error[0].Exception.Message
    Write-Output ":| $(Get-Date)      Error: $($msg)" >> $LogFile
    exit 1
}   


Expand-Archive -Path $Download_CS -DestinationPath "..\..\snippets" -Force
Expand-Archive -Path $Download_VB -DestinationPath "..\..\snippets" -Force
