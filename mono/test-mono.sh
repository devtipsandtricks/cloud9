#!/bin/bash
wget "https://raw.githubusercontent.com/devtipsandtricks/cloud9/master/mono/console-test.cs"
wget "https://raw.github.com/mono/mono/master/mcs/class/Mono.Security/Test/tools/tlstest/tlstest.cs"
wget "https://raw.githubusercontent.com/devtipsandtricks/cloud9/master/mono/aspnet-test.aspx"

echo "-------------------------- CONSOLE ---------------------"
mcs console-test.cs
mono console-test.exe

echo "-------------------------- HTTPS -----------------------"
mcs tlstest.cs /r:System.dll /r:Mono.Security.dll
mono tlstest.exe https://www.nuget.org

echo "-------------------------- ASP.NET ---------------------"
echo "navigate to https://<workspacename>-<username>.c9users.io/aspnet-test.aspx"
xsp4 --port 8080