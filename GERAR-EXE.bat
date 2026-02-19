@echo off
echo ========================================
echo   TRADUTOR PRO - GERADOR DE EXECUTAVEL
echo ========================================
echo.

echo [1/2] Instalando dependencias...
call npm install
echo.

echo [2/2] Gerando executavel portatil...
call npm run build
echo.

echo ========================================
echo   CONCLUIDO!
echo ========================================
echo.
echo O arquivo foi gerado em: dist\Tradutor-Pro-Portable.exe
echo.
echo Pressione qualquer tecla para abrir a pasta...
pause > nul
explorer dist
