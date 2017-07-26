# Windows software installation script

Here are PowerShell scripts that install the software I need. You can check them out, customize and use some pieces by yourself.

## Administrator privileges

Some commands require admin privileges. So UAC notifications will raise. Though it's not nessasary I recommend running script from an elevated shell (run Powershell as administrator) in order to skip constantly accepting UAC notifications.

In this scripts admin privileges are required for installing and updating Chocolatey, all Chocolatey packages and Oracle JDK package from Scoop.

## What's under the hood

Scripts are using the power of 3 package managers:
- [Scoop](http://scoop.sh/) for most development-related packages
- [PowerShell Gallery](https://www.powershellgallery.com/) for CLI autocomplete packages
- [Chocolatey](https://chocolatey.org/) for all other packages that are not available in Scoop

## Windows 10

Despite being a CLI fun when I'm using Windows 10 I prefer installing all available software from:
- [Microsoft Store](https://www.microsoft.com/store/apps)

Windows updates all the packages from the Store automatically.
So you don't need to waste your time.
Thus I believe that it's the best available GUI package manager on Windows.

## Why should I use package managers?

Package managers help you to have the latest versions of software without
finding yourself manually updating every installed software one by one.

## My software installation algorithm

So if I'm going to install any app for my Windows 10 PC then I will check it's availability in the following order:
1. Windows Store
2. PowerShell Gallery
3. Scoop: `scoop search <package>`
4. Chocolatey: `choco search <package>`
5. Manually download and launch `.msi` installer
6. Manually download and launch `.exe` installer
7. Manually download and launch portable version of the app
