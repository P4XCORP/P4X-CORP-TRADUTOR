# 🔍 Instruções de Debug

## O que mudou:

Agora quando você executar `npm start`, uma janela de DevTools (console) vai abrir junto com o overlay.

## Como testar:

### 1. Execute novamente:
```cmd
npm start
```

### 2. Você verá 2 janelas:
- **Overlay** (Tradutor Pro) - no canto superior direito
- **DevTools** (Console) - janela separada com logs

### 3. Teste a tradução:

1. Abra o Notepad
2. Digite: "Hello World"
3. Selecione o texto (arraste o mouse sobre ele)
4. Pressione **Ctrl+Shift+C**

### 4. Observe o console DevTools:

Você deve ver mensagens como:

```
🔤 Ctrl+Shift+C pressionado - Capturando texto...
📋 Texto capturado: Hello World...
✅ Enviando para tradução...
🔄 Iniciando tradução: Hello World
🌐 Chamando API de tradução...
📦 Resposta da API recebida
✅ Tradução concluída: Olá Mundo
```

## O que verificar:

### Se aparecer "VAZIO" no console:
- O texto não foi copiado
- Tente selecionar novamente
- Ou copie manualmente com Ctrl+C antes de Ctrl+Shift+C

### Se aparecer erro de rede:
- Verifique sua conexão com internet
- Firewall pode estar bloqueando

### Se não aparecer nada no console:
- O atalho não foi registrado
- Tente fechar e abrir novamente

## Comandos úteis no console:

No DevTools, você pode testar diretamente:

```javascript
// Testar tradução manualmente
translateText('Hello World').then(console.log)

// Ver status
console.log('Overlay visível:', document.getElementById('content'))
```

## Fechar DevTools:

Se quiser fechar o console de debug, comente a linha no código:

Em `src/main.js`, linha ~35, comente:
```javascript
// overlayWindow.webContents.openDevTools({ mode: 'detach' });
```

E execute novamente.
