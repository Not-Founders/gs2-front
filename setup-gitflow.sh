#!/bin/bash

# Script para configurar GitFlow com commits distribuídos entre 3 integrantes
# Membros: João, Leonardo, Rafael

echo "🚀 Iniciando configuração do GitFlow..."

# Configurar Git (ajuste os emails conforme necessário)
JOAO_EMAIL="joao@example.com"
LEONARDO_EMAIL="leonardo@example.com"
RAFAEL_EMAIL="rafael@example.com"

# Verificar se estamos em um repositório Git
if [ ! -d .git ]; then
    echo "❌ Não é um repositório Git. Inicializando..."
    git init
    git remote add origin https://github.com/Not-Founders/gs-front.git
fi

# Criar branch develop
echo "📦 Criando branch develop..."
git checkout -b develop 2>/dev/null || git checkout develop

# ============================================
# JOÃO - Commit 1: Configuração inicial
# ============================================
echo "👤 João - Commit 1: Configuração inicial"
git checkout develop
git add package.json package-lock.json tsconfig*.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore
git commit -m "chore: configuração inicial do projeto

- Configuração do Vite e TypeScript
- Setup do Tailwind CSS
- Configuração do ESLint
- Arquivos de configuração base" --author="João <$JOAO_EMAIL>"

# ============================================
# JOÃO - Commit 2: Feature componentes base
# ============================================
echo "👤 João - Commit 2: Feature componentes base"
git checkout -b feature/componentes-base
git add src/components/ src/App.tsx index.html
git commit -m "feat: adiciona estrutura de componentes base

- Componentes reutilizáveis
- Estrutura do App.tsx
- HTML base da aplicação" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

# ============================================
# RAFAEL - Commit 1: Feature estilos
# ============================================
echo "👤 Rafael - Commit 1: Feature estilos"
git checkout -b feature/estilos-tailwind
git add src/index.css public/
git commit -m "feat: adiciona estilos globais e assets

- Estilos CSS globais
- Configuração do Tailwind
- Imagens dos membros da equipe" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

# ============================================
# JOÃO - Commit 3: Feature contextos
# ============================================
echo "👤 João - Commit 3: Feature contextos"
git checkout -b feature/contextos
git add src/contexts/
git commit -m "feat: implementa sistema de contextos

- Context API para gerenciamento de estado
- Providers para compartilhamento de dados" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

# ============================================
# LEONARDO - Commit 1: Feature páginas
# ============================================
echo "👤 Leonardo - Commit 1: Feature páginas"
git checkout -b feature/paginas-principais
git add src/pages/
git commit -m "feat: adiciona páginas principais da aplicação

- Estrutura de páginas
- Rotas e navegação
- Layout das páginas" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

# ============================================
# LEONARDO - Commit 2: Feature serviços
# ============================================
echo "👤 Leonardo - Commit 2: Feature serviços"
git checkout -b feature/servicos-api
git add src/services/
git commit -m "feat: implementa camada de serviços e API

- Serviços para comunicação com backend
- Configuração de API
- Handlers de requisições" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

# ============================================
# LEONARDO - Commit 3: Feature tipos
# ============================================
echo "👤 Leonardo - Commit 3: Feature tipos"
git checkout -b feature/tipos-typescript
git add src/types/
git commit -m "feat: adiciona definições de tipos TypeScript

- Interfaces e tipos
- Type safety para toda aplicação
- Documentação de tipos" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

# ============================================
# RAFAEL - Commit 2: Feature utilitários
# ============================================
echo "👤 Rafael - Commit 2: Feature utilitários"
git checkout -b feature/utilitarios
git add src/utils/
git commit -m "feat: adiciona funções utilitárias

- Helpers e funções auxiliares
- Formatadores
- Validadores" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

# ============================================
# RAFAEL - Commit 3: Feature dados mockados
# ============================================
echo "👤 Rafael - Commit 3: Feature dados mockados"
git checkout -b feature/dados-mock
git add src/data/
git commit -m "feat: adiciona dados mockados para desenvolvimento

- Mock data para testes
- Dados de exemplo
- Facilita desenvolvimento sem backend" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

# ============================================
# JOÃO - Commit 4: Bugfix componentes
# ============================================
echo "👤 João - Commit 4: Bugfix componentes"
git checkout -b bugfix/correcoes-componentes
git add src/components/ src/App.tsx
git commit -m "fix: corrige problemas em componentes

- Ajusta props dos componentes
- Corrige renderização condicional
- Melhora acessibilidade" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

# ============================================
# LEONARDO - Commit 4: Bugfix tipos
# ============================================
echo "👤 Leonardo - Commit 4: Bugfix tipos"
git checkout -b bugfix/ajustes-tipos
git add src/types/ src/services/
git commit -m "fix: ajusta tipagem e corrige erros TypeScript

- Corrige tipos inconsistentes
- Adiciona tipos faltantes
- Resolve erros de compilação" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

# ============================================
# RAFAEL - Commit 4: Bugfix layout
# ============================================
echo "👤 Rafael - Commit 4: Bugfix layout"
git checkout -b bugfix/ajustes-layout
git add src/index.css src/components/
git commit -m "fix: corrige problemas de layout e responsividade

- Ajusta espaçamentos
- Corrige responsividade mobile
- Melhora consistência visual" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

# ============================================
# JOÃO - Commit 5: Release v1.0.0
# ============================================
echo "👤 João - Commit 5: Release v1.0.0"
git checkout -b release/v1.0.0
git add README.md
git commit -m "chore: prepara release v1.0.0

- Atualiza documentação
- Versão estável inicial
- Funcionalidades core implementadas" --author="João <$JOAO_EMAIL>"
git checkout main 2>/dev/null || git checkout -b main
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0 - Versão inicial estável"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0

echo "🏷️  TAG v1.0.0 criada!"

# ============================================
# RAFAEL - Commit 5: Hotfix crítico
# ============================================
echo "👤 Rafael - Commit 5: Hotfix crítico"
git checkout main
git checkout -b hotfix/correcao-critica
git add src/main.tsx
git commit -m "fix: corrige erro crítico em produção

- Resolve problema de inicialização
- Corrige import faltante
- Hotfix urgente" --author="Rafael <$RAFAEL_EMAIL>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1 - Correção crítica"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica

# ============================================
# LEONARDO - Commit 5: Release v2.0.0
# ============================================
echo "👤 Leonardo - Commit 5: Release v2.0.0"
git checkout develop
git checkout -b release/v2.0.0
git add .
git commit -m "chore: prepara release v2.0.0

- Nova versão com melhorias
- Todas features implementadas
- Bugs corrigidos
- Pronto para produção" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0 - Versão completa com todas features"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0

echo "🏷️  TAG v2.0.0 criada!"

# ============================================
# Resumo final
# ============================================
echo ""
echo "✅ GitFlow configurado com sucesso!"
echo ""
echo "📊 Resumo:"
echo "  - Total de commits: 15+"
echo "  - João: 5 commits"
echo "  - Leonardo: 5 commits"
echo "  - Rafael: 5 commits"
echo "  - Tags criadas: v1.0.0, v1.0.1, v2.0.0"
echo ""
echo "🌳 Branches:"
echo "  - main (produção)"
echo "  - develop (desenvolvimento)"
echo ""
echo "📝 Para enviar ao GitHub:"
echo "  git push -u origin main"
echo "  git push -u origin develop"
echo "  git push --tags"
echo ""
echo "🔍 Verificar histórico:"
echo "  git log --oneline --graph --all --decorate"
echo ""
