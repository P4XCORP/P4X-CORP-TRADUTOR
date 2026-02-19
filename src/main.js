const { app, BrowserWindow, globalShortcut, clipboard, screen, ipcMain } = require('electron');
const path = require('path');

let mainWindow = null;
let lastClipboard = '';
let checkInterval = null;

function createWindow() {
  const { width, height } = screen.getPrimaryDisplay().workAreaSize;
  
  mainWindow = new BrowserWindow({
    width: 380,
    height: 420,
    x: width - 400,
    y: 20,
    frame: false,
    backgroundColor: '#0a0a0a',
    alwaysOnTop: true,
    skipTaskbar: false,
    resizable: false,
    maximizable: false,
    minimizable: true,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  mainWindow.loadFile(path.join(__dirname, 'index.html'));
  mainWindow.setAlwaysOnTop(true, 'screen-saver', 1);
  mainWindow.setVisibleOnAllWorkspaces(true, { visibleOnFullScreen: true });
  
  // Quando restaurar, garantir que fica sempre no topo
  mainWindow.on('restore', () => {
    mainWindow.setAlwaysOnTop(true, 'screen-saver', 1);
    mainWindow.focus();
  });
  
  // Garantir que sempre fica visível quando ativo
  mainWindow.on('blur', () => {
    if (!mainWindow.isMinimized()) {
      mainWindow.setAlwaysOnTop(true, 'screen-saver', 1);
    }
  });
  
  // Monitora clipboard
  checkInterval = setInterval(() => {
    const currentClipboard = clipboard.readText();
    
    if (currentClipboard && 
        currentClipboard !== lastClipboard && 
        currentClipboard.length > 0 &&
        currentClipboard.length < 5000) {
      
      lastClipboard = currentClipboard;
      
      if (mainWindow && !mainWindow.isDestroyed()) {
        mainWindow.webContents.send('translate', currentClipboard);
        
        // Se estiver minimizado, restaura
        if (mainWindow.isMinimized()) {
          mainWindow.restore();
        }
        
        if (!mainWindow.isVisible()) {
          mainWindow.show();
        }
        mainWindow.focus();
      }
    }
  }, 300);
}

app.whenReady().then(() => {
  createWindow();
  
  console.log('Tradutor Pro v2.0');
  console.log('Dark & Clean Edition');
  console.log('');
  console.log('Copie qualquer texto (Ctrl+C) para traduzir');
  console.log('');
  
  // Ctrl+Shift+T para mostrar/ocultar (temporário)
  globalShortcut.register('CommandOrControl+Shift+T', () => {
    if (mainWindow) {
      if (mainWindow.isVisible()) {
        mainWindow.hide();
        setTimeout(() => {
          mainWindow.show();
          mainWindow.focus();
        }, 2000); // Volta depois de 2 segundos
      } else {
        mainWindow.show();
        mainWindow.focus();
      }
    }
  });
  
  // Ctrl+Shift+C para forçar tradução
  globalShortcut.register('CommandOrControl+Shift+C', () => {
    const text = clipboard.readText();
    if (text && mainWindow && !mainWindow.isDestroyed()) {
      mainWindow.webContents.send('translate', text);
      if (!mainWindow.isVisible()) {
        mainWindow.show();
      }
    }
  });
});

ipcMain.on('minimize', () => {
  if (mainWindow) {
    mainWindow.minimize();
  }
});

app.on('window-all-closed', () => {
  if (checkInterval) {
    clearInterval(checkInterval);
  }
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('will-quit', () => {
  if (checkInterval) {
    clearInterval(checkInterval);
  }
  globalShortcut.unregisterAll();
});
