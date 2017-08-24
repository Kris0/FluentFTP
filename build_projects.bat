
:: MS Build EXEs
SET MSBUILD=C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe 
SET MSBUILD2017="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe"

:: MS Build Config
SET PARAM=/nologo /property:WarningLevel=0 /verbosity:minimal

:: Build VS 2012 projects - .NET FX
%MSBUILD% %PARAM% msbuild_VS2012.proj

:: Build VS 2017 projects - .NET Core 1.4
%MSBUILD2017% %PARAM% msbuild_VS2017_14.proj

:: Build VS 2017 projects - .NET Core 1.6
%MSBUILD2017% %PARAM% msbuild_VS2017_16.proj

pause