$ErrorOccurred = $false
try {
    docker build . -t apuminer-image
}
catch {
    $ErrorOccurred = $true
    Write-Host "Can't Build Container"
}

if (!$ErrorOccurred) {
    docker run -d -p 5000:5000 --name apuminer-container apuminer-image
}