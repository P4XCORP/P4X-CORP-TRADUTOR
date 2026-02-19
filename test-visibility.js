// Script de teste para verificar se o overlay está visível
const { app, BrowserWindow, screen } = require('electron');

app.whenReady().then(() => {
  const { width, height } = screen.getPrimaryDisplay().workAreaSize;
  
  const testWindow = new BrowserWindow({
    width: 400,
    height: 300,
    x: width - 420,
    y: 20,
    frame: false,
    backgroundColor: '#FF0000', // Vermelho para teste
    alwaysOnTop: true,
    show: true,
    opacity: 1.0,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  testWindow.loadURL('data:text/html,<body style="background: linear-gradient(135deg, #FF0000 0%, #00FF00 100%); margin: 0; padding: 20px; color: white; font-family: Arial;"><h1>TESTE DE VISIBILIDADE</h1><p>Se você vê esta janela, o overlay funciona!</p><p style="font-size: 24px; margin-top: 50px;">✅ VISÍVEL</p></body>');
  
  testWindow.setAlwaysOnTop(true, 'floating');
  
  console.log('Janela de teste criada');
  console.log('Posição:', testWindow.getBounds());
  console.log('Visível:', testWindow.isVisible());
  console.log('AlwaysOnTop:', testWindow.isAlwaysOnTop());
});
