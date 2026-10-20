. "$PSScriptRoot\Assert-CommandExists.ps1"

Assert-CommandExists -Name "docker"

docker run -d -p 8080:80 --name mazoleum_application mazoleum:latest
