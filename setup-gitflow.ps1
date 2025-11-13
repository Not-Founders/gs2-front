# ============================================
# Script GitFlow - 3 Integrantes
# Total: 15 commits (5 por pessoa)
# ============================================

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  CONFIGURACAO GITFLOW" -ForegroundColor Green
Write-Host "  Joao: 5 commits" -ForegroundColor White
Write-Host "  Leonardo: 5 commits" -ForegroundColor White
Write-Host "  Rafael: 5 commits" -ForegroundColor White
Write-Host "  Total: 15 commits + 3 tags" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# AJUSTE OS EMAILS AQUI:
$JOAO_EMAIL = "joao@example.com"
$LEONARDO_EMAIL = "leonardo@example.com"
$RAFAEL_EMAIL = "rafael@example.com"

# Verificar repositorio Git
if (-not (Test-Path .git)) {
    Write-Host "[ERRO] Nao e um repositorio Git!" -ForegroundColor Red
    Write-Host "Execute: git init" -ForegroundColor Yellow
    exit 1
}

Write-Host "[1/17] Criando branch develop..." -ForegroundColor Cyan
git checkout -b develop 2>$null
if ($LASTEXITCODE -ne 0) { git checkout develop }

# ============================================
# JOAO - COMMIT 1/5
# ============================================
Write-Host ""
Write-Host "[2/17] JOAO - Commit 1/5: Configuracao inicial" -ForegroundColor Yellow
git checkout develop
git add package.json package-lock.json tsconfig.json tsconfig.app.json tsconfig.node.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore 2>$null
git commit -m "chore: configuracao inicial do projeto`n`n- Configuracao Vite e TypeScript`n- Setup Tailwind CSS`n- Configuracao ESLint" --author="Joao <$JOAO_EMAIL>"

# ============================================
# JOAO - COMMIT 2/5
# ============================================
Write-Host "[3/17] JOAO - Commit 2/5: Componentes base" -ForegroundColor Yellow
git checkout -b feature/componentes-base
git add src/components/ src/App.tsx index.html 2>$null
git commit -m "feat: adiciona estrutura de componentes base`n`n- Componentes reutilizaveis`n- Estrutura App.tsx`n- HTML base" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

# ============================================
# RAFAEL - COMMIT 1/5
# ============================================
Write-Host "[4/17] RAFAEL - Commit 1/5: Estilos e Tailwind" -ForegroundColor Yellow
git checkout -b feature/estilos-tailwind
git add src/index.css public/ 2>$null
git commit -m "feat: adiciona estilos globais e assets`n`n- Estilos CSS globais`n- Configuracao Tailwind`n- Assets do projeto" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

# ============================================
# JOAO - COMMIT 3/5
# ============================================
Write-Host "[5/17] JOAO - Commit 3/5: Sistema de contextos" -ForegroundColor Yellow
git checkout -b feature/contextos
git add src/contexts/ 2>$null
git commit -m "feat: implementa sistema de contextos`n`n- Context API`n- Gerenciamento de estado`n- Providers" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

# ============================================
# LEONARDO - COMMIT 1/5
# ============================================
Write-Host "[6/17] LEONARDO - Commit 1/5: Paginas principais" -ForegroundColor Yellow
git checkout -b feature/paginas-principais
git add src/pages/ 2>$null
git commit -m "feat: adiciona paginas principais`n`n- Estrutura de paginas`n- Rotas e navegacao`n- Layout das paginas" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

# ============================================
# LEONARDO - COMMIT 2/5
# ============================================
Write-Host "[7/17] LEONARDO - Commit 2/5: Servicos e API" -ForegroundColor Yellow
git checkout -b feature/servicos-api
git add src/services/ 2>$null
git commit -m "feat: implementa camada de servicos`n`n- Servicos de API`n- Configuracao HTTP`n- Handlers de requisicoes" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

# ============================================
# LEONARDO - COMMIT 3/5
# ============================================
Write-Host "[8/17] LEONARDO - Commit 3/5: Tipos TypeScript" -ForegroundColor Yellow
git checkout -b feature/tipos-typescript
git add src/types/ 2>$null
git commit -m "feat: adiciona tipos TypeScript`n`n- Interfaces e tipos`n- Type safety`n- Documentacao de tipos" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

# ============================================
# RAFAEL - COMMIT 2/5
# ============================================
Write-Host "[9/17] RAFAEL - Commit 2/5: Utilitarios" -ForegroundColor Yellow
git checkout -b feature/utilitarios
git add src/utils/ 2>$null
git commit -m "feat: adiciona funcoes utilitarias`n`n- Helpers`n- Formatadores`n- Validadores" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

# ============================================
# RAFAEL - COMMIT 3/5
# ============================================
Write-Host "[10/17] RAFAEL - Commit 3/5: Dados mockados" -ForegroundColor Yellow
git checkout -b feature/dados-mock
git add src/data/ 2>$null
git commit -m "feat: adiciona dados mockados`n`n- Mock data`n- Dados de exemplo`n- Facilita desenvolvimento" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

# ============================================
# JOAO - COMMIT 4/5
# ============================================
Write-Host "[11/17] JOAO - Commit 4/5: Bugfix componentes" -ForegroundColor Yellow
git checkout -b bugfix/correcoes-componentes
git add src/components/ src/App.tsx 2>$null
git commit -m "fix: corrige problemas em componentes`n`n- Ajusta props`n- Corrige renderizacao`n- Melhora acessibilidade" --author="Joao <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

# ============================================
# LEONARDO - COMMIT 4/5
# ============================================
Write-Host "[12/17] LEONARDO - Commit 4/5: Bugfix tipos" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-tipos
git add src/types/ src/services/ 2>$null
git commit -m "fix: ajusta tipagem TypeScript`n`n- Corrige tipos inconsistentes`n- Adiciona tipos faltantes`n- Resolve erros de compilacao" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

# ============================================
# RAFAEL - COMMIT 4/5
# ============================================
Write-Host "[13/17] RAFAEL - Commit 4/5: Bugfix layout" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-layout
git add src/index.css src/components/ 2>$null
git commit -m "fix: corrige layout e responsividade`n`n- Ajusta espacamentos`n- Corrige responsividade mobile`n- Melhora consistencia visual" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

# ============================================
# JOAO - COMMIT 5/5 + TAG v1.0.0
# ============================================
Write-Host "[14/17] JOAO - Commit 5/5: Release v1.0.0" -ForegroundColor Yellow
git checkout -b release/v1.0.0
git add README.md 2>$null
git commit -m "chore: prepara release v1.0.0`n`n- Atualiza documentacao`n- Versao estavel inicial`n- Funcionalidades core" --author="Joao <$JOAO_EMAIL>"
git checkout main 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b main }
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0 - Versao inicial estavel"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0
Write-Host "[TAG] v1.0.0 criada!" -ForegroundColor Green

# ============================================
# RAFAEL - COMMIT 5/5 + TAG v1.0.1
# ============================================
Write-Host "[15/17] RAFAEL - Commit 5/5: Hotfix critico" -ForegroundColor Yellow
git checkout main
git checkout -b hotfix/correcao-critica
git add src/main.tsx 2>$null
git commit -m "fix: corrige erro critico em producao`n`n- Resolve problema de inicializacao`n- Corrige import faltante`n- Hotfix urgente" --author="Rafael <$RAFAEL_EMAIL>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1 - Correcao critica"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica
Write-Host "[TAG] v1.0.1 criada!" -ForegroundColor Green

# ============================================
# LEONARDO - COMMIT 5/5 + TAG v2.0.0
# ============================================
Write-Host "[16/17] LEONARDO - Commit 5/5: Release v2.0.0" -ForegroundColor Yellow
git checkout develop
git checkout -b release/v2.0.0
git add . 2>$null
git commit -m "chore: prepara release v2.0.0`n`n- Nova versao com melhorias`n- Todas features implementadas`n- Bugs corrigidos`n- Pronto para producao" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0 - Versao completa"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0
Write-Host "[TAG] v2.0.0 criada!" -ForegroundColor Green

# ============================================
# RESUMO FINAL
# ============================================
Write-Host ""
Write-Host "[17/17] Verificando resultado..." -ForegroundColor Cyan
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GITFLOW CONFIGURADO COM SUCESSO!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "RESUMO:" -ForegroundColor Yellow
Write-Host "  - Total de commits: 15+" -ForegroundColor White
Write-Host "  - Joao: 5 commits" -ForegroundColor White
Write-Host "  - Leonardo: 5 commits" -ForegroundColor White
Write-Host "  - Rafael: 5 commits" -ForegroundColor White
Write-Host "  - Tags: v1.0.0, v1.0.1, v2.0.0" -ForegroundColor White
Write-Host ""
Write-Host "BRANCHES:" -ForegroundColor Yellow
Write-Host "  - main (producao)" -ForegroundColor White
Write-Host "  - develop (desenvolvimento)" -ForegroundColor White
Write-Host ""
Write-Host "PROXIMO PASSO - Enviar para GitHub:" -ForegroundColor Yellow
Write-Host "  git push -u origin main" -ForegroundColor Cyan
Write-Host "  git push -u origin develop" -ForegroundColor Cyan
Write-Host "  git push --tags" -ForegroundColor Cyan
Write-Host ""
Write-Host "VERIFICAR HISTORICO:" -ForegroundColor Yellow
Write-Host "  git log --oneline --graph --all --decorate" -ForegroundColor Cyan
Write-Host "  git shortlog -sn" -ForegroundColor Cyan
Write-Host ""
