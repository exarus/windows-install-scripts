scoop install rapidee slack
sudo choco install PowerShell dotnet4.7 skype virtualbox -y

# Docker requires Virtualbox or VmWare
# Read more: https://github.com/lukesampson/scoop/wiki/Docker-and-Docker-Compose
scoop install docker docker-compose docker-machine
docker-machine create
