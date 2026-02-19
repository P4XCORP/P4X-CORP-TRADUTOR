@echo off
chcp 65001 >nul
echo ========================================
echo   CRIAR PACOTE DE RELEASE
echo ========================================
echo.

REM Verificar se executavel existe
if not exist "dist\win-unpacked\TradutorPro.exe" (
    echo ERRO: Executavel nao encontrado!
    echo Execute primeiro: npm run build
    pause
    exit /b 1
)

REM Criar pasta de release
set RELEASE_FOLDER=TradutorPro-v2.0.0-Release
if exist "%RELEASE_FOLDER%" rmdir /s /q "%RELEASE_FOLDER%"
mkdir "%RELEASE_FOLDER%"

echo [1/4] Copiando executavel...
copy "dist\win-unpacked\TradutorPro.exe" "%RELEASE_FOLDER%\TradutorPro.exe" >nul

echo [2/4] Copiando documentacao...
copy "LEIA-ME.txt" "%RELEASE_FOLDER%\LEIA-ME.txt" >nul
copy "LICENSE.txt" "%RELEASE_FOLDER%\LICENSE.txt" >nul

echo [3/4] Criando arquivo de versao...
echo TRADUTOR PRO - Versao 2.0.0 > "%RELEASE_FOLDER%\VERSAO.txt"
echo ================================ >> "%RELEASE_FOLDER%\VERSAO.txt"
echo. >> "%RELEASE_FOLDER%\VERSAO.txt"
echo Arquivo: TradutorPro.exe >> "%RELEASE_FOLDER%\VERSAO.txt"
echo Tamanho: ~170 MB >> "%RELEASE_FOLDER%\VERSAO.txt"
echo. >> "%RELEASE_FOLDER%\VERSAO.txt"
echo COMO USAR: >> "%RELEASE_FOLDER%\VERSAO.txt"
echo 1. Execute TradutorPro.exe >> "%RELEASE_FOLDER%\VERSAO.txt"
echo 2. Copie qualquer texto (Ctrl+C) >> "%RELEASE_FOLDER%\VERSAO.txt"
echo 3. Veja a traducao aparecer! >> "%RELEASE_FOLDER%\VERSAO.txt"
echo. >> "%RELEASE_FOLDER%\VERSAO.txt"
echo Leia LEIA-ME.txt para mais informacoes. >> "%RELEASE_FOLDER%\VERSAO.txt"
echo. >> "%RELEASE_FOLDER%\VERSAO.txt"
echo Desenvolvido por: P4X >> "%RELEASE_FOLDER%\VERSAO.txt"
echo Licenca: MIT >> "%RELEASE_FOLDER%\VERSAO.txt"

echo [4/4] Criando atalho de inicio rapido...
echo @echo off > "%RELEASE_FOLDER%\Iniciar.bat"
echo start TradutorPro.exe >> "%RELEASE_FOLDER%\Iniciar.bat"

echo.
echo ========================================
echo   PACOTE CRIADO COM SUCESSO!
echo ========================================
echo.
echo Pasta: %RELEASE_FOLDER%\
echo.
echo Conteudo:
dir /b "%RELEASE_FOLDER%"
echo.
echo Agora voce pode:
echo 1. Zipar a pasta %RELEASE_FOLDER%
echo 2. Distribuir o ZIP
echo.
echo Pressione qualquer tecla para abrir a pasta...
pause >nul
explorer "%RELEASE_FOLDER%"
