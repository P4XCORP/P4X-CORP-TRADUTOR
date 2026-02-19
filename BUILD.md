# Como Gerar o Executável Portátil

## Passo 1: Instalar dependências
```cmd
npm install
```

## Passo 2: Gerar o executável portátil
```cmd
npm run build
```

O arquivo `Tradutor-Pro-Portable.exe` será gerado na pasta `dist/`

## Executável Portátil
- Não precisa instalação
- Pode ser executado de qualquer pasta
- Pode ser copiado para pendrive
- Tamanho aproximado: 150-200 MB

## Alternativa: Instalador tradicional
```cmd
npm run build:exe
```

Gera um instalador .exe na pasta `dist/`

## Notas
- O executável inclui o Node.js e Chromium embutidos
- Primeira execução pode demorar alguns segundos
- Configurações são salvas em localStorage (persistem entre execuções)
