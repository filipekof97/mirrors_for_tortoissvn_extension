@echo off

set caminho_pacote=%USERPROFILE%\.vscode\extensions\fantasytyx.tortoise-svn-0.1.1

if not exist %caminho_pacote% GOTO ERRO_PASTA
if not exist %caminho_pacote%\out\src GOTO ERRO_PASTA

move %caminho_pacote%\package.json %caminho_pacote%\package_old.json
move %caminho_pacote%\out\src\extension.js %caminho_pacote%\out\src\extension_old.js

copy package.json %caminho_pacote%\package.json
copy extension.js %caminho_pacote%\out\src\extension.js

echo.
echo Pode ser que tenha dado certo.
echo.
pause
GOTO:eof

:ERRO_PASTA
echo.
echo Erro: pasta do pacote nao encontrada.
echo.
pause