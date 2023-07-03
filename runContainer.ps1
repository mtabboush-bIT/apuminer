$ErrorOccured = $false

try
{
    docker build ./src -t apuminer-imager
}
catch {
    "Can't Build Container"
}

if (!ErrorOccured) { docker run -d -p 5000:5000 --name apuminer-container apuminer-image }

