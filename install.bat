@echo off

set dir=%~dp0

if not exist %userprofile%\.vimrc (
    mklink %userprofile%\.vimrc %dir%.vimrc 
)

if not exist %userprofile%\vimfiles (
    mklink /D %userprofile%\vimfiles %dir%.vim
)
