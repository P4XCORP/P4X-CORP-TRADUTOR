@echo off
echo ========================================
echo   CRIAR VERSAO PORTABLE
echo ========================================
echo.

if not exist "dist\win-unpacked\TradutorPro.exe" (
    echo Executavel nao encontrado!
    echo Execute primeiro: npm run build
    pause
    exit /b 1
)

echo Copiando executavel...
copy "dist\win-unpacked\TradutorPro.exe" "TradutorPro-2.0.0-Portable.exe"

if exist "TradutorPro-2.0.0-Portable.exe" (
    echo.
    echo ========================================
    echo   SUCESSO!
    echo ========================================
    echo.
    echo Arquivo criado: TradutorPro-2.0.0-Portable.exe
    echo Tamanho: ~170 MB
    echo.
    echo Este arquivo pode ser distribuido!
    echo.
) else (
    echo ERRO ao copiar arquivo
)

pause
