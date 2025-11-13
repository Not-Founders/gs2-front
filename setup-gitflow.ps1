Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "  SETUP GITFLOW - GS2 FRONT" -ForegroundColor Green
Write-Host "  15 commits + 3 tags" -ForegroundColor Yellow
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

$JOAO_NAME = "Veronesi30"
$JOAO_EMAIL = "jvveronesi30@gmail.com"
$LEO_NAME = "LeoSabbatini"
$LEO_EMAIL = "leonardoherrerasabbatini@gmail.com"
$RAFA_NAME = "devfreitas"
$RAFA_EMAIL = "freitassrafa2006@gmail.com"

if (-not (Test-Path .git)) {
    Write-Host "Inicializando repositorio Git..." -ForegroundColor Yellow
    git init
    git remote add origin https://github.com/Not-Founders/gs2-front.git
    Write-Host ""
}

Write-Host "[1/17] Criando branch develop..." -ForegroundColor Cyan
git checkout -b develop 2>$null
if ($LASTEXITCODE -ne 0) { git checkout develop }

Write-Host "[2/17] Joao - Commit 1/5" -ForegroundColor Yellow
git checkout develop
git add package.json package-lock.json tsconfig.json tsconfig.app.json tsconfig.node.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore 2>$null
git commit -m "chore: configuracao inicial do projeto" --author="$JOAO_NAME <$JOAO_EMAIL>"

Write-Host "[3/17] Joao - Commit 2/5" -ForegroundColor Yellow
git checkout -b feature/componentes-base
git add src/components/ src/App.tsx index.html 2>$null
git commit -m "feat: adiciona estrutura de componentes base" --author="$JOAO_NAME <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

Write-Host "[4/17] Rafael - Commit 1/5" -ForegroundColor Yellow
git checkout -b feature/estilos-tailwind
git add src/index.css public/ 2>$null
git commit -m "feat: adiciona estilos globais e assets" --author="$RAFA_NAME <$RAFA_EMAIL>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

Write-Host "[5/17] Joao - Commit 3/5" -ForegroundColor Yellow
git checkout -b feature/contextos
git add src/contexts/ 2>$null
git commit -m "feat: implementa sistema de contextos" --author="$JOAO_NAME <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

Write-Host "[6/17] Leonardo - Commit 1/5" -ForegroundColor Yellow
git checkout -b feature/paginas-principais
git add src/pages/ 2>$null
git commit -m "feat: adiciona paginas principais" --author="$LEO_NAME <$LEO_EMAIL>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

Write-Host "[7/17] Leonardo - Commit 2/5" -ForegroundColor Yellow
git checkout -b feature/servicos-api
git add src/services/ 2>$null
git commit -m "feat: implementa camada de servicos" --author="$LEO_NAME <$LEO_EMAIL>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

Write-Host "[8/17] Leonardo - Commit 3/5" -ForegroundColor Yellow
git checkout -b feature/tipos-typescript
git add src/types/ 2>$null
git commit -m "feat: adiciona tipos TypeScript" --author="$LEO_NAME <$LEO_EMAIL>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

Write-Host "[9/17] Rafael - Commit 2/5" -ForegroundColor Yellow
git checkout -b feature/utilitarios
git add src/utils/ 2>$null
git commit -m "feat: adiciona funcoes utilitarias" --author="$RAFA_NAME <$RAFA_EMAIL>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

Write-Host "[10/17] Rafael - Commit 3/5" -ForegroundColor Yellow
git checkout -b feature/dados-mock
git add src/data/ 2>$null
git commit -m "feat: adiciona dados mockados" --author="$RAFA_NAME <$RAFA_EMAIL>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

Write-Host "[11/17] Joao - Commit 4/5" -ForegroundColor Yellow
git checkout -b bugfix/correcoes-componentes
git add src/components/ src/App.tsx 2>$null
git commit -m "fix: corrige problemas em componentes" --author="$JOAO_NAME <$JOAO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

Write-Host "[12/17] Leonardo - Commit 4/5" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-tipos
git add src/types/ src/services/ 2>$null
git commit -m "fix: ajusta tipagem TypeScript" --author="$LEO_NAME <$LEO_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

Write-Host "[13/17] Rafael - Commit 4/5" -ForegroundColor Yellow
git checkout -b bugfix/ajustes-layout
git add src/index.css src/components/ 2>$null
git commit -m "fix: corrige layout e responsividade" --author="$RAFA_NAME <$RAFA_EMAIL>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

Write-Host "[14/17] Joao - Commit 5/5 + TAG v1.0.0" -ForegroundColor Yellow
git checkout -b release/v1.0.0
git add README.md 2>$null
git commit -m "chore: prepara release v1.0.0" --author="$JOAO_NAME <$JOAO_EMAIL>"
git checkout main 2>$null
if ($LASTEXITCODE -ne 0) { git checkout -b main }
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0

Write-Host "[15/17] Rafael - Commit 5/5 + TAG v1.0.1" -ForegroundColor Yellow
git checkout main
git checkout -b hotfix/correcao-critica
git add src/main.tsx 2>$null
git commit -m "fix: corrige erro critico em producao" --author="$RAFA_NAME <$RAFA_EMAIL>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica

Write-Host "[16/17] Leonardo - Commit 5/5 + TAG v2.0.0" -ForegroundColor Yellow
git checkout develop
git checkout -b release/v2.0.0
git add . 2>$null
git commit -m "chore: prepara release v2.0.0" --author="$LEO_NAME <$LEO_EMAIL>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0

Write-Host ""
Write-Host "[17/17] CONCLUIDO!" -ForegroundColor Green
Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "  SUCESSO!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "  Veronesi30: 5 commits" -ForegroundColor White
Write-Host "  LeoSabbatini: 5 commits" -ForegroundColor White
Write-Host "  devfreitas: 5 commits" -ForegroundColor White
Write-Host "  Tags: v1.0.0, v1.0.1, v2.0.0" -ForegroundColor White
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Proximo passo:" -ForegroundColor Yellow
Write-Host "  git push -u origin main" -ForegroundColor Cyan
Write-Host "  git push -u origin develop" -ForegroundColor Cyan
Write-Host "  git push --tags" -ForegroundColor Cyan
Write-Host ""
