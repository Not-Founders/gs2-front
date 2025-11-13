# 🚀 Setup GitFlow - Projeto GS2 Front

## 📋 Resumo

Este projeto está configurado para criar automaticamente:

- ✅ **15 commits** distribuídos entre 3 integrantes
- ✅ **5 commits por pessoa** (Veronesi30, LeoSabbatini, devfreitas)
- ✅ **3 tags** (v1.0.0, v1.0.1, v2.0.0)
- ✅ **GitFlow completo** (main, develop, feature/, bugfix/, release/, hotfix/)

---

## 👥 Integrantes

- **Veronesi30** (João) - jvveronesi30@gmail.com
- **LeoSabbatini** (Leonardo) - leonardoherrerasabbatini@gmail.com
- **devfreitas** (Rafael) - freitassrafa2006@gmail.com

---

## 📊 Distribuição de Commits

### Veronesi30 (João) - 5 commits
1. `chore` - Configuração inicial do projeto
2. `feat` - Estrutura de componentes base
3. `feat` - Sistema de contextos
4. `fix` - Correções em componentes
5. `chore` - Release v1.0.0 ⭐

### LeoSabbatini (Leonardo) - 5 commits
1. `feat` - Páginas principais
2. `feat` - Serviços e API
3. `feat` - Tipos TypeScript
4. `fix` - Ajustes de tipos
5. `chore` - Release v2.0.0 ⭐

### devfreitas (Rafael) - 5 commits
1. `feat` - Estilos e Tailwind
2. `feat` - Utilitários
3. `feat` - Dados mockados
4. `fix` - Ajustes de layout
5. `fix` - Hotfix correção crítica ⭐

---

## 🚀 Como Usar

### Passo 1: Executar Script

**Windows CMD:**
```cmd
setup-gitflow.bat
```

**Windows PowerShell:**
```powershell
.\setup-gitflow.ps1
```

**Linux/Mac:**
```bash
chmod +x setup-gitflow.sh
./setup-gitflow.sh
```

### Passo 2: Enviar para GitHub

```bash
git push -u origin main
git push -u origin develop
git push --tags
```

---

## 🔍 Verificar Resultado

```bash
# Ver histórico completo
git log --oneline --graph --all --decorate

# Ver commits por autor
git shortlog -sn

# Ver tags
git tag -l

# Ver branches
git branch -a
```

---

## 🏷️ Tags Criadas

- **v1.0.0** - Release inicial estável (Veronesi30)
- **v1.0.1** - Hotfix correção crítica (devfreitas)
- **v2.0.0** - Release completa (LeoSabbatini)

---

## 🌳 Estrutura GitFlow

```
main (produção)
├── v1.0.0
├── v1.0.1
└── v2.0.0

develop (desenvolvimento)
├── feature/componentes-base (Veronesi30)
├── feature/estilos-tailwind (devfreitas)
├── feature/contextos (Veronesi30)
├── feature/paginas-principais (LeoSabbatini)
├── feature/servicos-api (LeoSabbatini)
├── feature/tipos-typescript (LeoSabbatini)
├── feature/utilitarios (devfreitas)
├── feature/dados-mock (devfreitas)
├── bugfix/correcoes-componentes (Veronesi30)
├── bugfix/ajustes-tipos (LeoSabbatini)
├── bugfix/ajustes-layout (devfreitas)
├── release/v1.0.0 (Veronesi30)
├── hotfix/correcao-critica (devfreitas)
└── release/v2.0.0 (LeoSabbatini)
```

---

## ⚠️ Importante

- O script cria TODOS os 15 commits automaticamente
- Cada commit é atribuído ao autor correto
- Se não for um repositório Git, o script inicializa automaticamente
- Execute o script apenas UMA vez
- Os commits aparecerão no GitHub com os usernames corretos

---

## ✅ Checklist Final

Antes de enviar para avaliação:

- [ ] Script executado com sucesso
- [ ] 15+ commits criados
- [ ] 5 commits de cada integrante
- [ ] 3 tags criadas (v1.0.0, v1.0.1, v2.0.0)
- [ ] Branches main e develop existem
- [ ] Histórico GitFlow visível
- [ ] Tudo enviado para GitHub

---

**Repositório:** https://github.com/Not-Founders/gs2-front

**Boa sorte! 🎉**
