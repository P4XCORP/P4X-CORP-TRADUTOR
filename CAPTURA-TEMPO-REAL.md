# 🎥 Captura em Tempo Real

## O que mudou:

Agora o tradutor pode capturar uma área específica da tela e traduzir automaticamente em tempo real!

## 🚀 Como usar:

### 1. Instale a nova dependência:

```cmd
npm install
```

### 2. Execute o tradutor:

```cmd
npm start
```

### 3. Selecione a área para captura:

1. Pressione **Ctrl+Shift+A**
2. A tela ficará escura
3. **Arraste o mouse** para selecionar a área que quer monitorar
   - Exemplo: Selecione a área do chat do jogo
   - Exemplo: Selecione legendas de um vídeo
4. Solte o mouse

### 4. Captura automática iniciada!

- A área será capturada a cada **2 segundos**
- Texto novo será reconhecido automaticamente
- Tradução aparece no overlay instantaneamente
- Status mostra "🎥 Captura ativa"

### 5. Para parar a captura:

- Pressione **ESC** OU
- Clique no botão **⏹️** no overlay

## 📊 Exemplo de uso no jogo:

```
1. Abra o jogo
2. Pressione Ctrl+Shift+A
3. Selecione a área do chat (onde aparecem as mensagens)
4. Solte o mouse
5. Pronto! Todas as mensagens novas serão traduzidas automaticamente
```

## ⚙️ Configurações:

### Intervalo de captura:

Atualmente: **2 segundos**

Para mudar, edite `src/main.js`, linha ~90:
```javascript
}, 2000); // Mude para 1000 (1 seg) ou 3000 (3 seg)
```

### Qualidade do OCR:

O Tesseract funciona melhor com:
- Texto claro e legível
- Fundo contrastante
- Fonte não muito pequena
- Sem muita movimentação

## 🎮 Dicas para jogos:

1. **Selecione apenas a área do chat** - Não selecione a tela inteira
2. **Área estática** - Evite áreas com muita animação
3. **Texto grande** - Quanto maior o texto, melhor o OCR
4. **Modo janela** - Funciona melhor que tela cheia

## 🔧 Permissões:

O app precisa de permissão para:
- ✅ Capturar tela (screenshot)
- ✅ Ler clipboard
- ✅ Registrar atalhos globais

No Windows, pode pedir permissão de administrador na primeira vez.

## ⚡ Performance:

- Captura a cada 2 segundos = Baixo impacto
- OCR processa apenas a área selecionada
- Só traduz texto novo (não repete)

## 📝 Status no overlay:

- **"🎥 Captura ativa"** - Funcionando
- **"Traduzindo..."** - Processando novo texto
- **"✅ Captura ativa"** - Aguardando novo texto
- **"Captura parada"** - Parado

## ❌ Solução de problemas:

### Não está capturando:

1. Verifique se selecionou uma área grande o suficiente
2. Tente selecionar novamente (Ctrl+Shift+A)
3. Veja os logs no console DevTools

### OCR não reconhece texto:

1. Aumente a área selecionada
2. Certifique-se que o texto está visível
3. Evite fontes muito decorativas
4. Aguarde o download do Tesseract (primeira vez)

### Muito lento:

1. Aumente o intervalo de captura (de 2s para 3s ou 4s)
2. Selecione uma área menor
3. Feche outros programas pesados

## 🎯 Casos de uso:

- ✅ Chat de jogos online
- ✅ Legendas de vídeos
- ✅ Mensagens em apps
- ✅ Diálogos de jogos
- ✅ Qualquer texto que aparece na tela

---

**Agora você tem um tradutor em tempo real profissional!** 🎉
