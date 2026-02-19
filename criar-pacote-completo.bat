@echo off
echo Criando pacote completo...
echo.

if not exist "dist\win-unpacked" (
    echo ERRO: Execute npm run build primeiro!
    pause
    exit
)

set PASTA=TradutorPro-v2.0-Release

if exist "%PASTA%" rmdir /s /q "%PASTA%"
mkdir "%PASTA%"

echo Copiando todos os arquivos necessarios...
xcopy "dist\win-unpacked\*" "%PASTA%\" /E /I /Y

echo Copiando documentacao...
copy "LEIA-ME.txt" "%PASTA%\" >nul 2>&1
copy "LICENSE.txt" "%PASTA%\" >nul 2>&1

echo Criando atalho...
echo @echo off > "%PASTA%\Iniciar.bat"
echo start TradutorPro.exe >> "%PASTA%\Iniciar.bat"

echo.
echo PRONTO! Pasta criada: %PASTA%
echo Tamanho total: ~200 MB
echo.
echo Agora:
echo 1. Clique direito na pasta %PASTA%
echo 2. Enviar para - Pasta compactada
echo 3. Distribua o ZIP!
echo.
pause
explorer "%PASTA%"
