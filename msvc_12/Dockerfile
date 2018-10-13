FROM conanio/msvcbase

LABEL maintainer="Luis Martinez de Bartolome <luism@jfrog.com>"

RUN Invoke-WebRequest "https://download.microsoft.com/download/9/B/B/9BB1309E-1A8F-4A47-A6C5-ECF76672A3B3/BuildTools_Full.exe" -OutFile "$env:TEMP\BuildTools_Full.exe" -UseBasicParsing
RUN &  "$env:TEMP\BuildTools_Full.exe" /Silent /Full

RUN setx PATH 'C:\\Program Files (x86)\\MSBuild\\12.0\\Bin\\msbuild.exe;%PATH%'

RUN RefreshEnv
