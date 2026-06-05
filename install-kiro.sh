#!/usr/bin/env bash
set -e
INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"

if ! command -v kiro &>/dev/null; then
  curl -fsSL "https://downloads.kiro.dev/releases/latest/linux_x86_64/kiro" -o "$INSTALL_DIR/kiro"
  chmod +x "$INSTALL_DIR/kiro"
fi

export PATH="$INSTALL_DIR:$PATH"
