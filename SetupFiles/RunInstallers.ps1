function runInstallers {
 Set-ExecutionPolicy Unrestricted
installChoco
installMisc
}

function installChoco {
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Write-Output "************** Installing Choco **************"
  iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
  Write-Output "************** Installation Done *************"
}

function installMisc {
 Write-Output "************** Installing GIT **************"
  choco install -y git.install
  Write-Output "************** Installing NODEJS **************"
  choco install -y nodejs
  Write-Output "************** Installing CHROME **************"
  choco install -y googlechrome
  Write-Output "************** Installing FIREFOX **************"
  choco install -y firefox
  Write-Output "************** Installing JDK-8 **************"
  choco install -y jdk8
  Write-Output "**************Installation Done**************"
}
runInstallers