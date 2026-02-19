# 🔍 Onde está o Overlay?

## Localização Padrão

O overlay aparece no **CANTO SUPERIOR DIREITO** da tela:

```
┌─────────────────────────────────────────────┐
│                                    ┌──────┐ │
│                                    │AQUI! │ │
│                                    │      │ │
│                                    └──────┘ │
│                                             │
│                                             │
│                                             │
│                                             │
│                                             │
│                                             │
└─────────────────────────────────────────────┘
```

## Como Identificar

O overlay tem:
- 🎨 Fundo escuro (preto/cinza)
- 🌐 Título: "Tradutor Pro"
- 📋 Botão verde: "Capturar Seleção"
- 📷 Botão: "Área Automática"
- 🗑️ Botão de limpar
- Tamanho: aproximadamente 450x350 pixels

## Múltiplos Monitores

Se você tem mais de um monitor, o overlay aparece no monitor PRINCIPAL (onde está a barra de tarefas do Windows).

## Forçar Aparição

Se não encontrar o overlay, pressione:

```
Ctrl + Shift + T
```

Isso força o overlay a aparecer e ganhar foco.

## Verificar se está Rodando

Execute no terminal:

```cmd
npm start
```

Você deve ver:

```
🌐 TRADUTOR PRO - Iniciando...

✅ Overlay criado
📍 Procure no canto superior DIREITO da tela
⌨️  Atalhos disponíveis:
   Ctrl+Shift+C = Traduzir texto selecionado
   Ctrl+Shift+A = Capturar área da tela
   Ctrl+Shift+T = Mostrar/ocultar overlay
   ESC = Cancelar captura

✅ Overlay carregado e visível
Posição: { x: 1470, y: 20, width: 450, height: 350 }
```

A linha "Posição" mostra exatamente onde o overlay está na tela.

## Ainda Não Encontrou?

1. Execute o diagnóstico:
```cmd
npm run diagnostico
```

2. Uma janela ROXA grande deve aparecer
3. Se aparecer, o Electron funciona
4. Se não aparecer, há um problema com a instalação

## Mover o Overlay

Você pode arrastar o overlay pela barra de título (onde está escrito "🌐 Tradutor Pro").

## Redimensionar

Arraste pelas bordas da janela para redimensionar.
