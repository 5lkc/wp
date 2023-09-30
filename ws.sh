#!/bin/bash

# list of extensons for VSCode
extensons=(
    dzhavat.bracket-pair-toggler
    ecmel.vscode-html-css
    usernamehw.errorlens
    fabiospampinato.vscode-todo-plus
    humao.rest-client
    liviuschera.noctis
    mintlify.document
    PKief.material-icon-theme
    s-nlf-fh.glassit
    solnurkarim.html-to-css-autocompletion
    ritwickdey.LiveServer
    robertz.code-snapshot
    Vue.volar
)

for extenson in "${extensons[@]}"
do
    code --install-extension "$extenson"
done
