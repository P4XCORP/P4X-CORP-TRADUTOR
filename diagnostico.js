const { app, BrowserWindow, screen } = require('electron');

console.log('🔍 DIAGNÓSTICO DO TRADUTOR PRO\n');

app.whenReady().then(() => {
  console.log('✅ Electron iniciado com sucesso');
  
  const displays = screen.getAllDisplays();
  console.log(`📺 Monitores detectados: ${displays.length}`);
  
  displays.forEach((display, index) => {
    console.log(`   Monitor ${index + 1}:`, display.bounds);
  });
  
  const { width, height } = screen.getPrimaryDisplay().workAreaSize;
  console.log(`📐 Área de trabalho: ${width}x${height}`);
  
  const x = width - 470;
  const y = 20;
  console.log(`📍 Posição do overlay: x=${x}, y=${y}\n`);
  
  console.log('🎨 Criando janela de teste GRANDE e VISÍVEL...\n');
  
  const testWindow = new BrowserWindow({
    width: 500,
    height: 400,
    x: x,
    y: y,
    frame: true, // COM BORDA para facilitar visualização
    backgroundColor: '#FF0000',
    alwaysOnTop: true,
    show: true,
    title: 'TESTE - Tradutor Pro',
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  const html = `
    <!DOCTYPE html>
    <html>
    <head>
      <style>
        body {
          margin: 0;
          padding: 40px;
          background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
          color: white;
          font-family: Arial, sans-serif;
          text-align: center;
        }
        h1 {
          font-size: 48px;
          margin-bottom: 20px;
          text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }
        .status {
          font-size: 24px;
          margin: 20px 0;
          padding: 20px;
          background: rgba(255,255,255,0.2);
          border-radius: 10px;
        }
        .info {
          font-size: 16px;
          margin-top: 30px;
          line-height: 1.8;
        }
      </style>
    </head>
    <body>
      <h1>✅ TESTE PASSOU!</h1>
      <div class="status">
        O Electron está funcionando corretamente
      </div>
      <div class="info">
        <strong>Posição:</strong> x=${x}, y=${y}<br>
        <strong>Tamanho:</strong> 500x400<br>
        <strong>Monitor:</strong> ${width}x${height}<br><br>
        Se você vê esta janela, o overlay deveria funcionar!<br><br>
        <strong>Feche esta janela e execute:</strong><br>
        <code style="background: rgba(0,0,0,0.3); padding: 5px 10px; border-radius: 5px;">npm start</code>
      </div>
    </body>
    </html>
  `;

  testWindow.loadURL(`data:text/html;charset=utf-8,${encodeURIComponent(html)}`);
  
  testWindow.setAlwaysOnTop(true, 'screen-saver');
  
  console.log('✅ Janela de teste criada!');
  console.log('📍 Procure no canto superior direito da tela');
  console.log('🎨 Deve ser uma janela ROXA/AZUL grande\n');
  
  setTimeout(() => {
    const bounds = testWindow.getBounds();
    const visible = testWindow.isVisible();
    const onTop = testWindow.isAlwaysOnTop();
    
    console.log('📊 STATUS DA JANELA:');
    console.log(`   Visível: ${visible ? '✅ SIM' : '❌ NÃO'}`);
    console.log(`   Always on Top: ${onTop ? '✅ SIM' : '❌ NÃO'}`);
    console.log(`   Posição real:`, bounds);
    console.log(`   Tela: ${screen.getPrimaryDisplay().bounds.width}x${screen.getPrimaryDisplay().bounds.height}`);
  }, 1000);
});

app.on('window-all-closed', () => {
  console.log('\n👋 Teste finalizado. Execute "npm start" para iniciar o tradutor.');
  app.quit();
});
