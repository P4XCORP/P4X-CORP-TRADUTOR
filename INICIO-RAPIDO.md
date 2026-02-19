# 🚀 Início Rápido - Tradutor Pro

## Passo 1: Instalar

```cmd
npm install
```

Aguarde a instalação terminar (pode demorar alguns minutos).

## Passo 2: Testar

```cmd
npm run diagnostico
```

**O que esperar:**
- Uma janela ROXA/AZUL deve aparecer no canto superior direito
- Se aparecer = ✅ Tudo funcionando!
- Se NÃO aparecer = ❌ Problema com Electron

## Passo 3: Executar

```cmd
npm start
```

**O que esperar:**
- Overlay preto/cinza aparece no canto superior direito
- Título: "🌐 Tradutor Pro"
- Botões: "Capturar Seleção", "Área Automática"

## Passo 4: Usar

### Traduzir texto selecionado:

1. Abra qualquer aplicação (navegador, Word, etc)
2. Selecione um texto
3. Pressione **Ctrl+Shift+C**
4. A tradução aparece no overlay

### Capturar área da tela:

1. Pressione **Ctrl+Shift+A**
2. Arraste o mouse para selecionar a área
3. O texto será reconhecido e traduzido automaticamente

## Atalhos

| Tecla | Ação |
|-------|------|
| **Ctrl+Shift+C** | Traduz texto selecionado |
| **Ctrl+Shift+A** | Captura área da tela |
| **Ctrl+Shift+T** | Mostra/oculta overlay |
| **ESC** | Cancela captura |

## ❌ Problemas?

### Overlay não aparece

1. Pressione **Ctrl+Shift+T** (pode estar oculto)
2. Verifique o canto superior DIREITO da tela
3. Se tem múltiplos monitores, verifique todos
4. Execute `npm run diagnostico` novamente

### Tradução não funciona

- Verifique sua conexão com internet
- Aguarde alguns segundos e tente novamente

### OCR não reconhece texto

- Use texto claro e legível
- Evite fontes muito pequenas ou decorativas
- Aguarde o download do Tesseract (primeira vez demora)

## 📞 Suporte

Consulte o arquivo `TROUBLESHOOTING.md` para mais soluções.
