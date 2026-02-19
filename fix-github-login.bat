@echo off
echo ========================================
echo   CORRIGIR LOGIN DO GITHUB
echo ========================================
echo.

echo Removendo credenciais antigas...
git credential-manager delete https://github.com
cmdkey /delete:LegacyGeneric:target=git:https://github.com
echo.

echo Credenciais removidas!
echo.
echo Agora execute:
echo   git push -u origin main
echo.
echo Quando pedir login, use:
echo   Username: P4XCORP (ou seu usuario pessoal)
echo   Password: Personal Access Token
echo.
echo Para criar token:
echo 1. https://github.com/settings/tokens
echo 2. Generate new token (classic)
echo 3. Marque: repo (full control)
echo 4. Copie o token gerado
echo.
pause
