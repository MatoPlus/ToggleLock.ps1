@ECHO OFF
PowerShell.exe -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell.exe -Window Minimize -ArgumentList '-ExecutionPolicy Bypass ""%~dpn0.ps1""' -Verb RunAs}"