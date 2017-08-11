# Download manually:
# - Video Driver Software
# - SSD Software

# Set UTF-8 Encoding
$OutputEncoding = New-Object -TypeName System.Text.UTF8Encoding($False)
[Console]::OutputEncoding = New-Object -TypeName System.Text.UTF8Encoding($False)

####################
##### CLI Apps #####
####################

# Install Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Install CLI Utilities
scoop install touch ln which grep shasum curl wget sudo 7zip gzip tar zip unzip webp git gpg say

# Add bucket to Scoop (requires Git installed)
scoop bucket add extras

# Install Chocolatey (requires admin shell, i.e. sudo)
sudo iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# CLI autocomplete for Git and Docker
Install-PackageProvider NuGet -Force
Import-PackageProvider NuGet -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
PowerShellGet\Install-Module -Name posh-git -Scope CurrentUser
PowerShellGet\Install-Module -Name posh-docker -Scope CurrentUser
Import-Module -Name posh-git
Import-Module -Name posh-docker
New-Item $Profile.CurrentUserAllHosts -Type File -Force
[IO.File]::WriteAllText($Profile.CurrentUserAllHosts,
  '$OutputEncoding = New-Object -TypeName System.Text.UTF8Encoding($False)' + "`n" +
  '[Console]::OutputEncoding = New-Object -TypeName System.Text.UTF8Encoding($False)'  + "`n" +
  'Import-Module posh-git'  + "`n" +
  'Import-Module posh-docker'  + "`n"
)

# JVM
scoop install oraclejdk groovy scala kotlin maven gradle sbt leiningen
lein self-install

# Node
scoop install nodejs yarn
npm i -g npm

########################
##### Desktop Apps #####
########################

# Install editors
scoop install sublime-text atom vscode jetbrains-toolbox
sudo choco install androidstudio -y

# Install browsers
scoop install firefox
sudo choco install googlechrome opera -y

# Install development-related apps
scoop install conemu putty mobaxterm
sudo choco install postman soapui insomnia-rest-api-client -y

# Install PC monitoring apps
scoop install procexp
sudo choco install ccleaner windirstat -y

# Install other desktop apps
scoop install mpc-hc
sudo choco install aimp discord gitter foxitreader -y
