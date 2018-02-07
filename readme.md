# 运行须知  chufa

## 一，安装docker

http://www.runoob.com/docker/windows-docker-install.html


## 二，安装kubectl
#### for mac
```
# 安装 homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# mac 确保 
brew install kubectl
```
#### for windows
```

# 管理员身份, 在 cmd 中先装 choco
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# 安装 kubectl
choco install kubernetes-cli
```
