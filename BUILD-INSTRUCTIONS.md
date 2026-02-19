# Instruções de Build - Tradutor Pro

## Pré-requisitos

1. Node.js instalado (v16 ou superior)
2. npm instalado

## Instalação de Dependências

```bash
npm install
```

Isso instalará:
- electron (runtime)
- electron-builder (para criar executáveis)

## Comandos de Build

### 1. Versão Portable (Recomendado)

Cria um executável único que não precisa instalação:

```bash
npm run build:portable
```

Saída: `dist/Tradutor Pro-2.0.0-Portable.exe`

### 2. Instalador NSIS

Cria um instalador completo com opções de instalação:

```bash
npm run build:installer
```

Saída: `dist/Tradutor Pro-2.0.0-x64.exe`

### 3. Build Completo

Cria ambas as versões (portable + instalador):

```bash
npm run build:all
```

ou simplesmente:

```bash
npm run build
```

## Estrutura de Saída

Após o build, os arquivos estarão em:

```
dist/
├── Tradutor Pro-2.0.0-Portable.exe    (Versão portable)
├── Tradutor Pro-2.0.0-x64.exe         (Instalador)
└── win-unpacked/                       (Arquivos descompactados)
```

## Ícone Personalizado

Para adicionar um ícone personalizado:

1. Crie um arquivo `icon.ico` (256x256 ou maior)
2. Coloque em `build/icon.ico`
3. Execute o build novamente

## Distribuição

### Versão Portable
- Arquivo único
- Não precisa instalação
- Ideal para USB ou distribuição rápida
- Configurações salvas na pasta do executável

### Versão Instalador
- Instalação no sistema
- Atalhos no menu iniciar e desktop
- Desinstalador incluído
- Configurações salvas em AppData

## Troubleshooting

### Erro: "electron-builder not found"
```bash
npm install electron-builder --save-dev
```

### Erro: "Cannot find module"
```bash
npm install
```

### Build muito lento
- Primeira build demora mais (baixa dependências)
- Builds subsequentes são mais rápidas
- Use `--x64` para build apenas 64-bit

## Notas

- Tamanho final: ~150-200MB (inclui runtime Electron)
- Build time: 2-5 minutos (primeira vez)
- Requer conexão internet (primeira build)
