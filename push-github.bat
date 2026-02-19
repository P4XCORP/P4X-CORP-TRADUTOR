@echo off
echo ========================================
echo   PUSH PARA GITHUB
echo ========================================
echo.

REM Verificar se git esta instalado
git --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Git nao esta instalado!
    echo.
    echo Baixe em: https://git-scm.com/download/win
    echo Ou use GitHub Desktop: https://desktop.github.com/
    echo.
    pause
    exit /b 1
)

echo Git encontrado!
echo.

REM Verificar se ja e um repositorio git
if not exist ".git" (
    echo Inicializando repositorio...
    git init
    echo.
)

echo Adicionando arquivos...
git add .
echo.

echo Fazendo commit...
git commit -m "Tradutor Pro v2.0 - by P4X"
echo.

echo Conectando ao GitHub...
git remote remove origin 2>nul
git remote add origin https://github.com/P4XCORP/P4X-TRADUTOR.git
echo.

echo Enviando para GitHub...
git branch -M main
git push -u origin main
echo.

if errorlevel 1 (
    echo.
    echo ERRO ao fazer push!
    echo.
    echo Possiveis causas:
    echo 1. Repositorio nao existe no GitHub
    echo 2. Sem permissao de acesso
    echo 3. Precisa fazer login
    echo.
    echo Leia PUSH-TO-GITHUB.txt para mais detalhes
    echo.
) else (
    echo.
    echo ========================================
    echo   PUSH CONCLUIDO COM SUCESSO!
    echo ========================================
    echo.
    echo Repositorio: https://github.com/P4XCORP/P4X-TRADUTOR
    echo.
)

pause
