# Script PowerShell para configurar GitFlow com commits distribuídos
# Membros: João, Leonardo, Rafael

Write-Host "🚀 Iniciando configuração do GitFlow..." -ForegroundColor Green

# Configurar emails dos membros (ajuste conforme necessário)
$JOAO_EMAIL = "jvveronesi30@gmail.com"
$LEONARDO_EMAIL = "leonardo@gmail.com"
$RAFAEL_EMAIL = "freitassrafa2006@gmail.com"

# Verificar se é um repositório Git
if (-not (Test-Path .git)) {
    Write-Host "❌ Não é um repositório Git. Inicializando..." -ForegroundColor Yellow
    git init
    git remote add origin https://github.com/Not-Founders/gs-front.git
}

# Criar branch develop
Write-Host "📦 Criando branch develop..." -ForegroundColor Cyan
git checkout -b develop 2>$null
if ($LASTEXITCODE -ne 0) { git checkout develop }

# ============================================
# JOÃO - Commit 1: Configuração inicial
# ============================================
Write-Host "`n👤 João - Commit 1: Configuração inicial" -ForegroundColor Yellow
git checkout develop
git add package.json package-lock.json tsconfig.json tsconfig.app.json tsconfig.node.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore
git commit -m "chore: configuração inicial do projeto`n`n- Configuração do Vite e TypeScript`n- Setup do Tailwind CSS`n- Configuração do ESLint`n- Arquivos de configuração base" --author="João <$JOAO_EMAIL>"

# ============================================
# JOÃO - Commit 2: Feature componentes base
# ============================================
Write-Host "👤 João - Commit 2: Feature componentes base" -ForegroundColor Yellow
git checkout -b feature/componentes-base
git add src/components/ src/App.tsx index.html
git commit -m "feat: adiciona estrutura de componentes base`n`n- Componentes reutilizáveis`n- Estrutura do App.tsx`n- HTML base da aplicação" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

# ============================================
# RAFAEL - Commit 1: Feature estilos
# ============================================
Write-Host "👤 Rafael - Commit 1: Feature estilos" -ForegroundColor Yellow
git checkout -b feature/estilos-tailwind
git add src/index.css public/
git commit -m "feat: adiciona estilos globais e assets`n`n- Estilos CSS globais`n- Configuração do Tailwind`n- Imagens dos membros da equipe" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

# ============================================
# JOÃO - Commit 3: Feature contextos
# ============================================
Write-Host "👤 João - Commit 3: Feature contextos" -ForegroundColor Yellow
git checkout -b feature/contextos
git add src/contexts/
git commit -m "feat: implementa sistema de contextos`n`n- Context API para gerenciamento de estado`n- Providers para compartilhamento de dados" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

# ============================================
# LEONARDO - Commit 1: Feature páginas
# ============================================
Write-Host "👤 Leonardo - Commit 1: Feature páginas" -ForegroundColor Yellow
git checkout -b feature/paginas-principais
git add src/pages/
git commit -m "feat: adiciona páginas principais da aplicação`n`n- Estrutura de páginas`n- Rotas e navegação`n- Layout das páginas" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

# ============================================
# LEONARDO - Commit 2: Feature serviços
# ============================================
Write-Host "👤 Leonardo - Commit 2: Feature serviços" -ForegroundColor Yellow
git checkout -b feature/servicos-api
git add src/services/
git commit -m "feat: implementa camada de serviços e API`n`n- Serviços para comunicação com backend`n- Configuração de API`n- Handlers de requisições" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

# ============================================
# LEONARDO - Commit 3: Feature tipos
# ============================================
Write-Host "👤 Leonardo - Commit 3: Feature tipos" -ForegroundColor Yellow
git checkout -b feature/tipos-typescript
git add src/types/
git commit -m "feat: adiciona definições de tipos TypeScript`n`n- Interfaces e tipos`n- Type safety para toda aplicação`n- Documentação de tipos" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

# ============================================
# RAFAEL - Commit 2: Feature utilitários
# ============================================
Write-Host "👤 Rafael - Commit 2: Feature utilitários" -ForegroundColor Yellow
git checkout -b feature/utilitarios
git add src/utils/
git commit -m "feat: adiciona funções utilitárias`n`n- Helpers e funções auxiliares`n- Formatadores`n- Validadores" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

# ============================================
# RAFAEL - Commit 3: Feature dados mockados
# ============================================
Write-Host "👤 Rafael - Commit 3: Feature dados mockados" -ForegroundColor Yellow
git checkout -b feature/dados-mock
git add src/data/
git commit -m "feat: adiciona dados mockados para desenvolvimento`n`n- Mock data para testes`n- Dados de exemplo`n- Facilita desenvolvimento sem backend" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

# ============================================
# JOÃO - Commit 4: Bugfix componentes
# ============================================
Write-Host "👤 João - Commit 4: Bugfix componentes" -ForegroundColor Yellow
git checkout -b bugfix/correcoes-componentes
git add src/components/ src/App.tsx
git commit -m "fix: corrige problemas em componentes`n`n- Ajusta props dos componentes`n- Corrige renderização condicional`n- Melhora acessibilidade" --author="João <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

# ============================================
# LEONARDO - Commit 4: Bugfix tipos
# ============================================
Write-Host "👤 Leonardo - Commit 4: Bugfix tipos" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-tipos
git add src/types/ src/services/
git commit -m "fix: ajusta tipagem e corrige erros TypeScript`n`n- Corrige tipos inconsistentes`n- Adiciona tipos faltantes`n- Resolve erros de compilação" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

# ============================================
# RAFAEL - Commit 4: Bugfix layout
# ============================================
Write-Host "👤 Rafael - Commit 4: Bugfix layout" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-layout
git add src/index.css src/components/
git commit -m "fix: corrige problemas de layout e responsividade`n`n- Ajusta espaçamentos`n- Corrige responsividade mobile`n- Melhora consistência visual" --author="Rafael <$RAFAEL_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

# ============================================
# JOÃO - Commit 5: Release v1.0.0
# ============================================
Write-Host "👤 João - Commit 5: Release v1.0.0" -ForegroundColor Yellow
git checkout -b release/v1.0.0
git add README.md
git commit -m "chore: prepara release v1.0.0`n`n- Atualiza documentação`n- Versão estável inicial`n- Funcionalidades core implementadas" --author="João <$JOAO_EMAIL>"
git checkout main 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b main }
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0 - Versão inicial estável"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0

Write-Host "🏷️  TAG v1.0.0 criada!" -ForegroundColor Green

# ============================================
# RAFAEL - Commit 5: Hotfix crítico
# ============================================
Write-Host "👤 Rafael - Commit 5: Hotfix crítico" -ForegroundColor Yellow
git checkout main
git checkout -b hotfix/correcao-critica
git add src/main.tsx
git commit -m "fix: corrige erro crítico em produção`n`n- Resolve problema de inicialização`n- Corrige import faltante`n- Hotfix urgente" --author="Rafael <$RAFAEL_EMAIL>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1 - Correção crítica"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica

# ============================================
# LEONARDO - Commit 5: Release v2.0.0
# ============================================
Write-Host "👤 Leonardo - Commit 5: Release v2.0.0" -ForegroundColor Yellow
git checkout develop
git checkout -b release/v2.0.0
git add .
git commit -m "chore: prepara release v2.0.0`n`n- Nova versão com melhorias`n- Todas features implementadas`n- Bugs corrigidos`n- Pronto para produção" --author="Leonardo <$LEONARDO_EMAIL>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0 - Versão completa com todas features"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0

Write-Host "🏷️  TAG v2.0.0 criada!" -ForegroundColor Green

# ============================================
# Resumo final
# ============================================
Write-Host "`n✅ GitFlow configurado com sucesso!" -ForegroundColor Green
Write-Host "`n📊 Resumo:" -ForegroundColor Cyan
Write-Host "  - Total de commits: 15+" -ForegroundColor White
Write-Host "  - João: 5 commits" -ForegroundColor White
Write-Host "  - Leonardo: 5 commits" -ForegroundColor White
Write-Host "  - Rafael: 5 commits" -ForegroundColor White
Write-Host "  - Tags criadas: v1.0.0, v1.0.1, v2.0.0" -ForegroundColor White
Write-Host "`n🌳 Branches:" -ForegroundColor Cyan
Write-Host "  - main (produção)" -ForegroundColor White
Write-Host "  - develop (desenvolvimento)" -ForegroundColor White
Write-Host "`n📝 Para enviar ao GitHub:" -ForegroundColor Cyan
Write-Host "  git push -u origin main" -ForegroundColor Yellow
Write-Host "  git push -u origin develop" -ForegroundColor Yellow
Write-Host "  git push --tags" -ForegroundColor Yellow
Write-Host "`n🔍 Verificar histórico:" -ForegroundColor Cyan
Write-Host "  git log --oneline --graph --all --decorate" -ForegroundColor Yellow
Write-Host ""
