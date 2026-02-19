# Checklist de Release - Tradutor Pro

## Antes do Build

- [ ] Testar aplicativo localmente (`npm start`)
- [ ] Verificar todas as traduções funcionando
- [ ] Testar modo "Escrever"
- [ ] Testar painel de configuração
- [ ] Verificar atalhos de teclado (Ctrl+Shift+T, Ctrl+Shift+C)
- [ ] Testar com diferentes idiomas
- [ ] Verificar se janela fica always on top
- [ ] Atualizar versão em `package.json`
- [ ] Adicionar ícone personalizado em `build/icon.ico` (opcional)

## Build

- [ ] Instalar dependências: `npm install`
- [ ] Build portable: `npm run build:portable`
- [ ] Build instalador: `npm run build:installer`
- [ ] Verificar arquivos em `dist/`

## Testes Pós-Build

### Versão Portable
- [ ] Executar `Tradutor Pro-X.X.X-Portable.exe`
- [ ] Verificar se abre sem erros
- [ ] Testar tradução automática (Ctrl+C)
- [ ] Testar modo escrever
- [ ] Testar configurações
- [ ] Fechar e reabrir (verificar se config persiste)

### Versão Instalador
- [ ] Executar instalador
- [ ] Verificar opções de instalação
- [ ] Instalar em pasta customizada
- [ ] Verificar atalhos criados (Desktop, Menu Iniciar)
- [ ] Executar aplicativo instalado
- [ ] Testar todas as funcionalidades
- [ ] Desinstalar e verificar limpeza

## Distribuição

- [ ] Criar pasta de release: `Tradutor-Pro-v2.0.0/`
- [ ] Copiar executáveis para pasta
- [ ] Incluir README.md
- [ ] Incluir LICENSE.txt
- [ ] Criar arquivo ZIP para distribuição
- [ ] Testar ZIP em máquina limpa

## Documentação

- [ ] Atualizar README.md com novas features
- [ ] Atualizar screenshots (se houver)
- [ ] Documentar novos idiomas suportados
- [ ] Atualizar changelog

## Publicação

- [ ] Upload para repositório (GitHub, etc)
- [ ] Criar release tag (v2.0.0)
- [ ] Adicionar notas de release
- [ ] Compartilhar link de download

## Tamanhos Esperados

- Portable: ~150-180 MB
- Instalador: ~150-180 MB
- Instalado: ~200-250 MB

## Notas

- Primeira build demora mais (baixa dependências Electron)
- Builds subsequentes são mais rápidas
- Testar em Windows 10/11 64-bit
- Antivírus pode dar falso positivo (normal para apps Electron)
