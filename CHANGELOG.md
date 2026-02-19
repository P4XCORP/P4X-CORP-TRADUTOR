# Changelog - Tradutor Pro

## [2.0.0] - 2024

### Adicionado
- Design dark & clean 100% sem ícones ou emojis
- Suporte para 18+ idiomas
- Modo "Escrever" para compor mensagens antes de enviar
- Painel de configuração com 4 opções de idioma
- Tradução automática ao copiar texto (Ctrl+C)
- Monitoramento de clipboard a cada 300ms
- Janela compacta e fixa (380x420)
- Always on top overlay
- Configurações persistentes (localStorage)
- Atalhos de teclado (Ctrl+Shift+T, Ctrl+Shift+C)

### Idiomas Suportados
- Português (PT)
- Inglês (EN)
- Espanhol (ES)
- Francês (FR)
- Alemão (DE)
- Italiano (IT)
- Russo (RU)
- Árabe (AR)
- Hindi (HI)
- Japonês (JA)
- Coreano (KO)
- Chinês (ZH-CN)
- Turco (TR)
- Holandês (NL)
- Polonês (PL)
- Ucraniano (UK)
- Tailandês (TH)
- Vietnamita (VI)

### Características Técnicas
- Electron 28.0.0
- Google Translate API (free endpoint)
- Janela sem frame customizada
- Titlebar com botões macOS-style
- Scroll interno nos painéis
- Animações suaves
- Tema dark puro (#0a0a0a)

### Removido
- OCR (Tesseract.js - incompatível)
- Ctrl+Click detection (não suportado)
- Screenshot functionality
- Ícones e emojis
- Janela redimensionável

## [1.0.0] - Versões Anteriores

### Tentativas e Aprendizados
- Testado OCR com Tesseract.js (falhou - V8 platform)
- Testado screenshot-desktop (causou erros)
- Testado Ctrl+Click (não possível sem hooks Windows)
- Múltiplas iterações de UI
- Testes com diferentes atalhos de teclado
