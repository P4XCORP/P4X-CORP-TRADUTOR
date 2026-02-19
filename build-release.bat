@echo off
echo ========================================
echo   TRADUTOR PRO - BUILD RELEASE
echo ========================================
echo.

echo [1/5] Verificando Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Node.js nao encontrado!
    echo Instale Node.js de https://nodejs.org/
    pause
    exit /b 1
)
echo OK - Node.js instalado
echo.

echo [2/5] Instalando dependencias...
call npm install
if errorlevel 1 (
    echo ERRO: Falha ao instalar dependencias
    pause
    exit /b 1
)
echo OK - Dependencias instaladas
echo.

echo [3/5] Limpando builds anteriores...
if exist dist rmdir /s /q dist
echo OK - Pasta dist limpa
echo.

echo [4/5] Criando builds...
echo.
echo Criando versao PORTABLE...
call npm run build:portable
if errorlevel 1 (
    echo ERRO: Falha ao criar versao portable
    pause
    exit /b 1
)
echo OK - Versao portable criada
echo.

echo Criando versao INSTALADOR...
call npm run build:installer
if errorlevel 1 (
    echo ERRO: Falha ao criar instalador
    pause
    exit /b 1
)
echo OK - Versao instalador criada
echo.

echo [5/5] Build concluido!
echo.
echo Arquivos criados em: dist\
echo.
dir dist\*.exe
echo.
echo ========================================
echo   BUILD COMPLETO!
echo ========================================
echo.
pause
