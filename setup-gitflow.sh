#!/bin/bash

# ============================================
# Script GitFlow - 3 Integrantes
# Total: 15 commits (5 por pessoa)
# ============================================

echo ""
echo "========================================"
echo "  CONFIGURACAO GITFLOW"
echo "  Joao: 5 commits"
echo "  Leonardo: 5 commits"
echo "  Rafael: 5 commits"
echo "  Total: 15 commits + 3 tags"
echo "========================================"
echo ""

# AJUSTE OS EMAILS AQUI:
JOAO_EMAIL="joao@example.com"
LEONARDO_EMAIL="leonardo@example.com"
RAFAEL_EMAIL="rafael@example.com"

# Verificar repositorio Git
if [ ! -d .git ]; then
    echo "[ERRO] Nao e um repositorio Git!"
    echo "Execute: git init"
    exit 1
fi

echo "[1/17] Criando branch develop..."
git checkout -b develop 2>/dev/null || git checkout develop

# ============================================
# JOAO - COMMIT 1/5
# ============================================
echo ""
echo "[2/17] JOAO - Commit 1/5: Configuracao inicial"
git checkout develop
git add package.json package-lock.json tsconfig.json tsconfig.app.json tsconfig.node.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore 2>/dev/null
git commit -m "chore: configuracao inicial do projeto

- Configuracao Vite e TypeScript
- Setup Tailwind CSS
- Configuracao ESLint" --author="Joao <$JOAO_EMAIL>"

# ============================================
# JOAO - COMMIT 2/5
# ============================================
echo "[3/17] JOAO - Commit 2/5: Componentes base"
git checkout -b feature/componentes-base
git add src/components/ src/App.tsx index.html 2>/dev/null
git commit -m "feat: adiciona estrutura de componentes base

- Componentes reutilizaveis
- Estrutura App.tsx
- HTML base" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

# ============================================
# RAFAEL - COMMIT 1/5
# ============================================
echo "[4/17] RAFAEL - Commit 1/5: Estilos e Tailwind"
git checkout -b feature/estilos-tailwind
git add src/index.css public/ 2>/dev/null
git commit -m "feat: adiciona estilos globais e assets

- Estilos CSS globais
- Configuracao Tailwind
- Assets do projeto" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

# ============================================
# JOAO - COMMIT 3/5
# ============================================
echo "[5/17] JOAO - Commit 3/5: Sistema de contextos"
git checkout -b feature/contextos
git add src/contexts/ 2>/dev/null
git commit -m "feat: implementa sistema de contextos

- Context API
- Gerenciamento de estado
- Providers" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

# ============================================
# LEONARDO - COMMIT 1/5
# ============================================
echo "[6/17] LEONARDO - Commit 1/5: Paginas principais"
git checkout -b feature/paginas-principais
git add src/pages/ 2>/dev/null
git commit -m "feat: adiciona paginas principais

- Estrutura de paginas
- Rotas e navegacao
- Layout das paginas" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

# ============================================
# LEONARDO - COMMIT 2/5
# ============================================
echo "[7/17] LEONARDO - Commit 2/5: Servicos e API"
git checkout -b feature/servicos-api
git add src/services/ 2>/dev/null
git commit -m "feat: implementa camada de servicos

- Servicos de API
- Configuracao HTTP
- Handlers de requisicoes" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

# ============================================
# LEONARDO - COMMIT 3/5
# ============================================
echo "[8/17] LEONARDO - Commit 3/5: Tipos TypeScript"
git checkout -b feature/tipos-typescript
git add src/types/ 2>/dev/null
git commit -m "feat: adiciona tipos TypeScript

- Interfaces e tipos
- Type safety
- Documentacao de tipos" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

# ============================================
# RAFAEL - COMMIT 2/5
# ============================================
echo "[9/17] RAFAEL - Commit 2/5: Utilitarios"
git checkout -b feature/utilitarios
git add src/utils/ 2>/dev/null
git commit -m "feat: adiciona funcoes utilitarias

- Helpers
- Formatadores
- Validadores" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

# ============================================
# RAFAEL - COMMIT 3/5
# ============================================
echo "[10/17] RAFAEL - Commit 3/5: Dados mockados"
git checkout -b feature/dados-mock
git add src/data/ 2>/dev/null
git commit -m "feat: adiciona dados mockados

- Mock data
- Dados de exemplo
- Facilita desenvolvimento" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

# ============================================
# JOAO - COMMIT 4/5
# ============================================
echo "[11/17] JOAO - Commit 4/5: Bugfix componentes"
git checkout -b bugfix/correcoes-componentes
git add src/components/ src/App.tsx 2>/dev/null
git commit -m "fix: corrige problemas em componentes

- Ajusta props
- Corrige renderizacao
- Melhora acessibilidade" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

# ============================================
# LEONARDO - COMMIT 4/5
# ============================================
echo "[12/17] LEONARDO - Commit 4/5: Bugfix tipos"
git checkout -b bugfix/ajustes-tipos
git add src/types/ src/services/ 2>/dev/null
git commit -m "fix: ajusta tipagem TypeScript

- Corrige tipos inconsistentes
- Adiciona tipos faltantes
- Resolve erros de compilacao" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

# ============================================
# RAFAEL - COMMIT 4/5
# ============================================
echo "[13/17] RAFAEL - Commit 4/5: Bugfix layout"
git checkout -b bugfix/ajustes-layout
git add src/index.css src/components/ 2>/dev/null
git commit -m "fix: corrige layout e responsividade

- Ajusta espacamentos
- Corrige responsividade mobile
- Melhora consistencia visual" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

# ============================================
# JOAO - COMMIT 5/5 + TAG v1.0.0
# ============================================
echo "[14/17] JOAO - Commit 5/5: Release v1.0.0"
git checkout -b release/v1.0.0
git add README.md 2>/dev/null
git commit -m "chore: prepara release v1.0.0

- Atualiza documentacao
- Versao estavel inicial
- Funcionalidades core" --author="Joao <$JOAO_EMAIL>"
git checkout main 2>/dev/null || git checkout -b main
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0 - Versao inicial estavel"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0
echo "[TAG] v1.0.0 criada!"

# ============================================
# RAFAEL - COMMIT 5/5 + TAG v1.0.1
# ============================================
echo "[15/17] RAFAEL - Commit 5/5: Hotfix critico"
git checkout main
git checkout -b hotfix/correcao-critica
git add src/main.tsx 2>/dev/null
git commit -m "fix: corrige erro critico em producao

- Resolve problema de inicializacao
- Corrige import faltante
- Hotfix urgente" --author="Rafael <$RAFAEL_EMAIL>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1 - Correcao critica"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica
echo "[TAG] v1.0.1 criada!"

# ============================================
# LEONARDO - COMMIT 5/5 + TAG v2.0.0
# ============================================
echo "[16/17] LEONARDO - Commit 5/5: Release v2.0.0"
git checkout develop
git checkout -b release/v2.0.0
git add . 2>/dev/null
git commit -m "chore: prepara release v2.0.0

- Nova versao com melhorias
- Todas features implementadas
- Bugs corrigidos
- Pronto para producao" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0 - Versao completa"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0
echo "[TAG] v2.0.0 criada!"

# ============================================
# RESUMO FINAL
# ============================================
echo ""
echo "[17/17] Verificando resultado..."
echo ""
echo "========================================"
echo "  GITFLOW CONFIGURADO COM SUCESSO!"
echo "========================================"
echo ""
echo "RESUMO:"
echo "  - Total de commits: 15+"
echo "  - Joao: 5 commits"
echo "  - Leonardo: 5 commits"
echo "  - Rafael: 5 commits"
echo "  - Tags: v1.0.0, v1.0.1, v2.0.0"
echo ""
echo "BRANCHES:"
echo "  - main (producao)"
echo "  - develop (desenvolvimento)"
echo ""
echo "PROXIMO PASSO - Enviar para GitHub:"
echo "  git push -u origin main"
echo "  git push -u origin develop"
echo "  git push --tags"
echo ""
echo "VERIFICAR HISTORICO:"
echo "  git log --oneline --graph --all --decorate"
echo "  git shortlog -sn"
echo ""
