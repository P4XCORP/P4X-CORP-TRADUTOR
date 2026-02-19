@echo off
echo ========================================
echo   TRADUTOR PRO - BUILD PORTABLE
echo ========================================
echo.

echo [1/3] Limpando builds anteriores...
if exist TradutorPro-v2.0-Portable rmdir /s /q TradutorPro-v2.0-Portable
echo OK
echo.

echo [2/3] Compilando aplicativo...
echo (Avisos de symbolic link podem ser ignorados)
echo.
call npm run build 2>nul
echo.

if not exist "dist\win-unpacked\TradutorPro.exe" (
    echo ERRO: Executavel nao foi criado!
    pause
    exit /b 1
)
echo OK - Executavel criado!
echo.

echo [3/3] Criando pacote portable...
set PASTA=TradutorPro-v2.0-Portable

mkdir "%PASTA%"
echo Copiando arquivos...
xcopy "dist\win-unpacked\*" "%PASTA%\" /E /I /Y /Q >nul

copy "LEIA-ME.txt" "%PASTA%\" >nul 2>&1
copy "LICENSE.txt" "%PASTA%\" >nul 2>&1

echo @echo off > "%PASTA%\Iniciar.bat"
echo start TradutorPro.exe >> "%PASTA%\Iniciar.bat"

echo OK
echo.
echo ========================================
echo   BUILD COMPLETO!
echo ========================================
echo.
echo Pasta: %PASTA%
echo Tamanho: ~200 MB
echo.
echo Arquivos principais:
echo - TradutorPro.exe (executavel)
echo - LEIA-ME.txt (instrucoes)
echo - LICENSE.txt (licenca)
echo - Iniciar.bat (atalho)
echo + recursos do Electron
echo.
echo PROXIMO PASSO:
echo 1. Clique direito na pasta %PASTA%
echo 2. Enviar para - Pasta compactada
echo 3. Distribua o ZIP!
echo.
pause
explorer "%PASTA%"
