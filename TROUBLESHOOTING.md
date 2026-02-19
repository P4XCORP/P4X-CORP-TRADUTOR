# 🔧 Solução de Problemas

## Overlay não aparece / Painel sumiu

### Teste de Visibilidade

Execute o teste para verificar se o Electron está funcionando:

```cmd
npm run test
```

Se uma janela VERMELHA/VERDE aparecer, o Electron funciona. Se não aparecer, há um problema com o Electron.

### Soluções:

1. **Reinstalar dependências**
```cmd
rmdir /s /q node_modules
del package-lock.json
npm install
```

2. **Verificar se o overlay está rodando**
```cmd
npm start
```

Você deve ver no console:
```
✅ Overlay carregado e visível
Posição: { x: ..., y: ..., width: 450, height: 350 }
```

3. **Forçar visibilidade com atalho**

Pressione: **Ctrl+Shift+T**

Isso força o overlay a aparecer.

4. **Verificar posição da tela**

O overlay aparece no canto superior direito. Se você tem múltiplos monitores, pode estar em outro monitor.

5. **Testar com janela simples**

Edite `src/main.js` e adicione após `createOverlayWindow()`:

```javascript
// Janela de teste
const testWin = new BrowserWindow({
  width: 300,
  height: 200,
  backgroundColor: '#FF0000'
});
testWin.loadURL('data:text/html,<h1 style="color:white">TESTE</h1>');
```

6. **Verificar logs do Electron**

Abra o DevTools do overlay (adicione no main.js):

```javascript
overlayWindow.webContents.openDevTools();
```

## Overlay aparece mas não responde

- Verifique se os atalhos estão funcionando
- Tente clicar nos botões da interface
- Verifique a conexão com internet (necessária para tradução)

## OCR não funciona

O Tesseract.js pode demorar para baixar na primeira execução. Aguarde alguns minutos.

## Tradução não funciona

- Verifique sua conexão com internet
- A API do Google Translate pode ter limite de requisições
- Tente novamente após alguns segundos
