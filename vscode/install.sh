#!/bin/bash
set -e
source "$(git rev-parse --show-toplevel)/lib/vscode.sh"
source "$(git rev-parse --show-toplevel)/lib/configurations.sh"

function vscode_config_path {
    if [ "$(uname)" = "Linux" ]; then
        echo "$HOME/.config/Code/User"
    else
        echo "$HOME/Library/Application Support/Code/User"
    fi
}

function main {
    link_config --target-directory "$(vscode_config_path)" settings.json snippets
    install_vscode_extensions
}

main