# ⚡ Teste Rápido - 30 Segundos

## Passo 1: Abra o Notepad

Pressione: **Win + R**
Digite: **notepad**
Pressione: **Enter**

## Passo 2: Digite um texto em inglês

```
Hello World
This is a test
Good morning
```

## Passo 3: Selecione o texto

Arraste o mouse sobre "Hello World"

## Passo 4: Pressione o atalho

**Ctrl + Shift + C**

(Segure Ctrl, segure Shift, aperte C)

## ✅ Resultado Esperado

No overlay "Tradutor Pro" deve aparecer:

```
┌─────────────────────────┐
│ Auto → PT      10:30    │
│ Hello World             │
│ Olá Mundo              │
└─────────────────────────┘
```

## ❌ Não funcionou?

### Verifique:

1. **Texto está selecionado?** (deve estar azul/destacado)
2. **Atalho correto?** Ctrl+**Shift**+C (não só Ctrl+C)
3. **Internet conectada?** Necessário para traduzir
4. **Overlay visível?** Pressione Ctrl+Shift+T

### Teste alternativo:

1. Selecione o texto
2. Copie com **Ctrl+C**
3. Pressione **Ctrl+Shift+C**

## 🎯 Teste de Captura de Área

### Passo 1: Pressione Ctrl+Shift+A

A tela deve ficar escura com mensagem "Modo de Captura"

### Passo 2: Arraste sobre o texto

Arraste o mouse sobre o texto no Notepad

### Passo 3: Solte o mouse

O texto será reconhecido e traduzido

### Passo 4: Aguarde

OCR pode demorar 5-10 segundos na primeira vez

## 📊 Checklist

- [ ] Overlay apareceu no canto superior direito
- [ ] Consegui selecionar texto no Notepad
- [ ] Pressionei Ctrl+Shift+C
- [ ] Tradução apareceu no overlay
- [ ] Testei Ctrl+Shift+A (captura de área)

## 🆘 Ainda não funciona?

Execute no terminal:

```cmd
npm start
```

Veja se aparece no console:

```
✅ Overlay carregado e visível
```

Se aparecer, o overlay está funcionando. O problema pode ser:

1. **Atalho não registrado** - Reinicie a aplicação
2. **Outro programa usando o atalho** - Feche outros programas
3. **Firewall bloqueando** - Permita acesso à internet

---

**Funcionou?** Agora você pode usar em qualquer aplicação! 🎉
