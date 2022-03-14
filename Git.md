# GIT

## PRoyecto desde 0

## Verificar que archivos se estan siguiendo

`git status`
Untracked files: (use "git add <file>..." to include in what will be committed)
**heroes/**

## darle seguimiento a un archivo o carpeta

`git add heroes`
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
(use "git restore --staged <file>..." to unstage)
new file: heroes/.gitignore
new file: heroes/README.md
new file: heroes/package.json
new file: heroes/public/favicon.ico
new file: heroes/public/index.html
new file: heroes/public/logo192.png
new file: heroes/public/logo512.png
new file: heroes/public/manifest.json
new file: heroes/public/robots.txt
new file: heroes/src/App.css
new file: heroes/src/App.js
new file: heroes/src/App.test.js
new file: heroes/src/index.css
new file: heroes/src/index.js
new file: heroes/src/logo.svg
new file: heroes/src/reportWebVitals.js
new file: heroes/src/setupTests.js
new file: heroes/yarn.lock `

## Commit de todos los archivos

`git commit -m 'your message'`

## Commit a un archivo especifico

`git commit -m "Aquí tu mensaje del commit" file1.js`

## Pull

Jalar cambios del repositorio para asegurarnos de que no hay trabajo nuevo

`git pull`

## Crear una rama nueva

`git branch nombreDeLaRama`

## Listar ramas

`git show-branch`

## Moverse a otra rama

Para moverse entre ramas usamos el comando "git checkout" seguido del nombre de la rama que queremos que sea la activa.
`git checkout nombreDeLaRama`

## Unir ramas

Mergeamos sobre master (rama actual) la rama en la que tenemos los cambios (develop)

`git merge development`

## Ejemplo levantando un proyecto desde 0

```git
git init
git add .
git commit -m 'First Commit'
(server) C:\siw>git add backend
```

## Listar commits

```git
C:\SW>git log --oneline --decorate
6e22881 (HEAD -> main, origin/main, origin/HEAD) install-yapf
105a846 app inventario
f29c601 app core
7a07e63 django project
c9e1d5b initial commit
c9a5d12 Initial commit
```

## Revertir commit

```git
C:\SW>git revert 105a846
:wq
```
