@echo off
echo Criando pacote de release...
echo.

if not exist "dist\win-unpacked\TradutorPro.exe" (
    echo ERRO: Execute npm run build primeiro!
    pause
    exit
)

set PASTA=TradutorPro-v2.0-Release

if exist "%PASTA%" rmdir /s /q "%PASTA%"
mkdir "%PASTA%"

echo Copiando arquivos...
copy "dist\win-unpacked\TradutorPro.exe" "%PASTA%\TradutorPro.exe"
copy "LEIA-ME.txt" "%PASTA%\"
copy "LICENSE.txt" "%PASTA%\"

echo @echo off > "%PASTA%\Iniciar.bat"
echo start TradutorPro.exe >> "%PASTA%\Iniciar.bat"

echo.
echo PRONTO! Pasta criada: %PASTA%
echo.
echo Agora faca:
echo 1. Clique direito na pasta %PASTA%
echo 2. Enviar para - Pasta compactada
echo 3. Distribua o ZIP!
echo.
pause
explorer "%PASTA%"
