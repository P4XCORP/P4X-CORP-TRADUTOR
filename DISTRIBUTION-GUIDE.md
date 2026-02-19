# Guia de Distribuição - Tradutor Pro

## Preparação para Distribuição

### 1. Build dos Executáveis

Execute o script automatizado:
```bash
build-release.bat
```

Ou manualmente:
```bash
npm install
npm run build:all
```

### 2. Arquivos Gerados

Após o build, você terá em `dist/`:

```
dist/
├── Tradutor Pro-2.0.0-Portable.exe    (~150-180 MB)
├── Tradutor Pro-2.0.0-x64.exe         (~150-180 MB)
└── win-unpacked/                       (arquivos descompactados)
```

## Opções de Distribuição

### Opção 1: Versão Portable (Recomendado para Iniciantes)

**Vantagens:**
- Arquivo único
- Não precisa instalação
- Funciona direto do USB
- Sem permissões de administrador
- Configurações portáteis

**Como distribuir:**
1. Pegue `Tradutor Pro-2.0.0-Portable.exe`
2. Renomeie para algo simples: `TradutorPro.exe`
3. Compartilhe via:
   - Google Drive
   - Dropbox
   - WeTransfer
   - GitHub Releases
   - Seu próprio site

**Instruções para usuário:**
```
1. Baixe TradutorPro.exe
2. Execute o arquivo
3. Pronto! Comece a usar
```

### Opção 2: Instalador NSIS

**Vantagens:**
- Instalação profissional
- Atalhos automáticos
- Desinstalador incluído
- Integração com Windows

**Como distribuir:**
1. Pegue `Tradutor Pro-2.0.0-x64.exe`
2. Compartilhe via plataformas de download
3. Usuário executa e segue wizard de instalação

**Instruções para usuário:**
```
1. Baixe o instalador
2. Execute e siga as instruções
3. Escolha pasta de instalação
4. Aguarde instalação
5. Use atalho criado
```

### Opção 3: Pacote Completo

Crie um ZIP com ambas as versões:

```
Tradutor-Pro-v2.0.0/
├── TradutorPro-Portable.exe
├── TradutorPro-Installer.exe
├── README.txt
└── LICENSE.txt
```

## Plataformas de Distribuição

### GitHub Releases (Grátis)
1. Crie repositório no GitHub
2. Vá em "Releases" → "Create new release"
3. Tag: v2.0.0
4. Upload dos executáveis
5. Adicione notas de release
6. Publique

### Google Drive
1. Upload dos arquivos
2. Clique direito → "Get link"
3. Mude para "Anyone with the link"
4. Compartilhe o link

### Dropbox
Similar ao Google Drive

### SourceForge (Grátis)
Plataforma tradicional para distribuir software

### Microsoft Store (Pago)
Requer conta de desenvolvedor ($19/ano)

## Documentação para Usuários

Crie um arquivo `LEIA-ME.txt`:

```
TRADUTOR PRO v2.0
=================

COMO USAR:
1. Execute o programa
2. Copie qualquer texto (Ctrl+C)
3. Veja a tradução aparecer automaticamente

ATALHOS:
- Ctrl+Shift+T: Mostrar/Ocultar
- Ctrl+Shift+C: Forçar tradução

RECURSOS:
- 18+ idiomas suportados
- Modo "Escrever" para compor mensagens
- Configuração de idiomas
- Design dark e minimalista

REQUISITOS:
- Windows 10/11 (64-bit)
- 200 MB de espaço em disco
- Conexão com internet (para traduzir)

SUPORTE:
[seu email ou link]
```

## Avisos Importantes

### Antivírus
Aplicativos Electron podem gerar falsos positivos em antivírus. Isso é normal.

**Soluções:**
1. Assinar digitalmente o executável (requer certificado ~$100-300/ano)
2. Avisar usuários que é falso positivo
3. Submeter para whitelist dos antivírus principais

### Tamanho do Arquivo
~150-180 MB é normal para apps Electron (incluem runtime Chromium completo)

### Atualizações
Para versões futuras:
1. Aumente versão em `package.json`
2. Rebuild
3. Redistribua com novo número de versão

## Marketing e Divulgação

### Onde divulgar:
- Reddit (r/software, r/translator)
- Twitter/X
- Product Hunt
- Alternativeto.net
- Fóruns de tradução
- Grupos de Facebook
- Discord servers

### Screenshots
Tire prints da interface para mostrar:
- Janela principal
- Modo escrever
- Painel de configuração
- Exemplo de tradução

### Vídeo Demo
Grave um vídeo curto (1-2 min) mostrando:
1. Como baixar
2. Como executar
3. Como usar (copiar texto)
4. Modo escrever
5. Configurações

## Checklist Final

- [ ] Testado em máquina limpa
- [ ] README.txt incluído
- [ ] LICENSE.txt incluído
- [ ] Screenshots prontos
- [ ] Vídeo demo (opcional)
- [ ] Link de download funcionando
- [ ] Instruções claras
- [ ] Versão documentada
- [ ] Changelog atualizado

## Monetização (Opcional)

Se quiser monetizar no futuro:
- Versão gratuita com limite de traduções/dia
- Versão Pro sem limites
- Doações via PayPal/Ko-fi
- Patrocínio via GitHub Sponsors
- Ads discretos (não recomendado)

## Suporte

Prepare-se para:
- Perguntas de usuários
- Reportes de bugs
- Pedidos de features
- Problemas de instalação

Crie um email ou canal de suporte.
