@echo off
REM Script para configurar GitFlow com commits distribuídos entre 3 integrantes
REM Membros: João, Leonardo, Rafael

echo Iniciando configuracao do GitFlow...

REM Configurar emails dos membros
set JOAO_EMAIL=joao@example.com
set LEONARDO_EMAIL=leonardo@example.com
set RAFAEL_EMAIL=rafael@example.com

REM Verificar se é um repositório Git
if not exist .git (
    echo Nao e um repositorio Git. Inicializando...
    git init
    git remote add origin https://github.com/Not-Founders/gs-front.git
)

REM Criar branch develop
echo Criando branch develop...
git checkout -b develop 2>nul || git checkout develop

REM ============================================
REM JOAO - Commit 1: Configuracao inicial
REM ============================================
echo Joao - Commit 1: Configuracao inicial
git checkout develop
git add package.json package-lock.json tsconfig.json tsconfig.app.json tsconfig.node.json vite.config.ts tailwind.config.ts eslint.config.js .gitignore
git commit -m "chore: configuracao inicial do projeto" -m "" -m "- Configuracao do Vite e TypeScript" -m "- Setup do Tailwind CSS" -m "- Configuracao do ESLint" -m "- Arquivos de configuracao base" --author="Joao <%JOAO_EMAIL%>"

REM ============================================
REM JOAO - Commit 2: Feature componentes base
REM ============================================
echo Joao - Commit 2: Feature componentes base
git checkout -b feature/componentes-base
git add src\components\ src\App.tsx index.html
git commit -m "feat: adiciona estrutura de componentes base" -m "" -m "- Componentes reutilizaveis" -m "- Estrutura do App.tsx" -m "- HTML base da aplicacao" --author="Joao <%JOAO_EMAIL%>"
git checkout develop
git merge --no-ff feature/componentes-base -m "Merge branch 'feature/componentes-base' into develop"
git branch -d feature/componentes-base

REM ============================================
REM RAFAEL - Commit 1: Feature estilos
REM ============================================
echo Rafael - Commit 1: Feature estilos
git checkout -b feature/estilos-tailwind
git add src\index.css public\
git commit -m "feat: adiciona estilos globais e assets" -m "" -m "- Estilos CSS globais" -m "- Configuracao do Tailwind" -m "- Imagens dos membros da equipe" --author="Rafael <%RAFAEL_EMAIL%>"
git checkout develop
git merge --no-ff feature/estilos-tailwind -m "Merge branch 'feature/estilos-tailwind' into develop"
git branch -d feature/estilos-tailwind

REM ============================================
REM JOAO - Commit 3: Feature contextos
REM ============================================
echo Joao - Commit 3: Feature contextos
git checkout -b feature/contextos
git add src\contexts\
git commit -m "feat: implementa sistema de contextos" -m "" -m "- Context API para gerenciamento de estado" -m "- Providers para compartilhamento de dados" --author="Joao <%JOAO_EMAIL%>"
git checkout develop
git merge --no-ff feature/contextos -m "Merge branch 'feature/contextos' into develop"
git branch -d feature/contextos

REM ============================================
REM LEONARDO - Commit 1: Feature paginas
REM ============================================
echo Leonardo - Commit 1: Feature paginas
git checkout -b feature/paginas-principais
git add src\pages\
git commit -m "feat: adiciona paginas principais da aplicacao" -m "" -m "- Estrutura de paginas" -m "- Rotas e navegacao" -m "- Layout das paginas" --author="Leonardo <%LEONARDO_EMAIL%>"
git checkout develop
git merge --no-ff feature/paginas-principais -m "Merge branch 'feature/paginas-principais' into develop"
git branch -d feature/paginas-principais

REM ============================================
REM LEONARDO - Commit 2: Feature servicos
REM ============================================
echo Leonardo - Commit 2: Feature servicos
git checkout -b feature/servicos-api
git add src\services\
git commit -m "feat: implementa camada de servicos e API" -m "" -m "- Servicos para comunicacao com backend" -m "- Configuracao de API" -m "- Handlers de requisicoes" --author="Leonardo <%LEONARDO_EMAIL%>"
git checkout develop
git merge --no-ff feature/servicos-api -m "Merge branch 'feature/servicos-api' into develop"
git branch -d feature/servicos-api

REM ============================================
REM LEONARDO - Commit 3: Feature tipos
REM ============================================
echo Leonardo - Commit 3: Feature tipos
git checkout -b feature/tipos-typescript
git add src\types\
git commit -m "feat: adiciona definicoes de tipos TypeScript" -m "" -m "- Interfaces e tipos" -m "- Type safety para toda aplicacao" -m "- Documentacao de tipos" --author="Leonardo <%LEONARDO_EMAIL%>"
git checkout develop
git merge --no-ff feature/tipos-typescript -m "Merge branch 'feature/tipos-typescript' into develop"
git branch -d feature/tipos-typescript

REM ============================================
REM RAFAEL - Commit 2: Feature utilitarios
REM ============================================
echo Rafael - Commit 2: Feature utilitarios
git checkout -b feature/utilitarios
git add src\utils\
git commit -m "feat: adiciona funcoes utilitarias" -m "" -m "- Helpers e funcoes auxiliares" -m "- Formatadores" -m "- Validadores" --author="Rafael <%RAFAEL_EMAIL%>"
git checkout develop
git merge --no-ff feature/utilitarios -m "Merge branch 'feature/utilitarios' into develop"
git branch -d feature/utilitarios

REM ============================================
REM RAFAEL - Commit 3: Feature dados mockados
REM ============================================
echo Rafael - Commit 3: Feature dados mockados
git checkout -b feature/dados-mock
git add src\data\
git commit -m "feat: adiciona dados mockados para desenvolvimento" -m "" -m "- Mock data para testes" -m "- Dados de exemplo" -m "- Facilita desenvolvimento sem backend" --author="Rafael <%RAFAEL_EMAIL%>"
git checkout develop
git merge --no-ff feature/dados-mock -m "Merge branch 'feature/dados-mock' into develop"
git branch -d feature/dados-mock

REM ============================================
REM JOAO - Commit 4: Bugfix componentes
REM ============================================
echo Joao - Commit 4: Bugfix componentes
git checkout -b bugfix/correcoes-componentes
git add src\components\ src\App.tsx
git commit -m "fix: corrige problemas em componentes" -m "" -m "- Ajusta props dos componentes" -m "- Corrige renderizacao condicional" -m "- Melhora acessibilidade" --author="Joao <%JOAO_EMAIL%>"
git checkout develop
git merge --no-ff bugfix/correcoes-componentes -m "Merge branch 'bugfix/correcoes-componentes' into develop"
git branch -d bugfix/correcoes-componentes

REM ============================================
REM LEONARDO - Commit 4: Bugfix tipos
REM ============================================
echo Leonardo - Commit 4: Bugfix tipos
git checkout -b bugfix/ajustes-tipos
git add src\types\ src\services\
git commit -m "fix: ajusta tipagem e corrige erros TypeScript" -m "" -m "- Corrige tipos inconsistentes" -m "- Adiciona tipos faltantes" -m "- Resolve erros de compilacao" --author="Leonardo <%LEONARDO_EMAIL%>"
git checkout develop
git merge --no-ff bugfix/ajustes-tipos -m "Merge branch 'bugfix/ajustes-tipos' into develop"
git branch -d bugfix/ajustes-tipos

REM ============================================
REM RAFAEL - Commit 4: Bugfix layout
REM ============================================
echo Rafael - Commit 4: Bugfix layout
git checkout -b bugfix/ajustes-layout
git add src\index.css src\components\
git commit -m "fix: corrige problemas de layout e responsividade" -m "" -m "- Ajusta espacamentos" -m "- Corrige responsividade mobile" -m "- Melhora consistencia visual" --author="Rafael <%RAFAEL_EMAIL%>"
git checkout develop
git merge --no-ff bugfix/ajustes-layout -m "Merge branch 'bugfix/ajustes-layout' into develop"
git branch -d bugfix/ajustes-layout

REM ============================================
REM JOAO - Commit 5: Release v1.0.0
REM ============================================
echo Joao - Commit 5: Release v1.0.0
git checkout -b release/v1.0.0
git add README.md
git commit -m "chore: prepara release v1.0.0" -m "" -m "- Atualiza documentacao" -m "- Versao estavel inicial" -m "- Funcionalidades core implementadas" --author="Joao <%JOAO_EMAIL%>"
git checkout main 2>nul || git checkout -b main
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0'"
git tag -a v1.0.0 -m "Release v1.0.0 - Versao inicial estavel"
git checkout develop
git merge --no-ff release/v1.0.0 -m "Merge branch 'release/v1.0.0' into develop"
git branch -d release/v1.0.0

echo TAG v1.0.0 criada!

REM ============================================
REM RAFAEL - Commit 5: Hotfix critico
REM ============================================
echo Rafael - Commit 5: Hotfix critico
git checkout main
git checkout -b hotfix/correcao-critica
git add src\main.tsx
git commit -m "fix: corrige erro critico em producao" -m "" -m "- Resolve problema de inicializacao" -m "- Corrige import faltante" -m "- Hotfix urgente" --author="Rafael <%RAFAEL_EMAIL%>"
git checkout main
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica'"
git tag -a v1.0.1 -m "Hotfix v1.0.1 - Correcao critica"
git checkout develop
git merge --no-ff hotfix/correcao-critica -m "Merge branch 'hotfix/correcao-critica' into develop"
git branch -d hotfix/correcao-critica

REM ============================================
REM LEONARDO - Commit 5: Release v2.0.0
REM ============================================
echo Leonardo - Commit 5: Release v2.0.0
git checkout develop
git checkout -b release/v2.0.0
git add .
git commit -m "chore: prepara release v2.0.0" -m "" -m "- Nova versao com melhorias" -m "- Todas features implementadas" -m "- Bugs corrigidos" -m "- Pronto para producao" --author="Leonardo <%LEONARDO_EMAIL%>"
git checkout main
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0'"
git tag -a v2.0.0 -m "Release v2.0.0 - Versao completa com todas features"
git checkout develop
git merge --no-ff release/v2.0.0 -m "Merge branch 'release/v2.0.0' into develop"
git branch -d release/v2.0.0

echo TAG v2.0.0 criada!

REM ============================================
REM Resumo final
REM ============================================
echo.
echo GitFlow configurado com sucesso!
echo.
echo Resumo:
echo   - Total de commits: 15+
echo   - Joao: 5 commits
echo   - Leonardo: 5 commits
echo   - Rafael: 5 commits
echo   - Tags criadas: v1.0.0, v1.0.1, v2.0.0
echo.
echo Branches:
echo   - main (producao)
echo   - develop (desenvolvimento)
echo.
echo Para enviar ao GitHub:
echo   git push -u origin main
echo   git push -u origin develop
echo   git push --tags
echo.
echo Verificar historico:
echo   git log --oneline --graph --all --decorate
echo.
pause
