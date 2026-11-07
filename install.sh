#!/usr/bin/env bash
# Install the Rudzik theme for Omarchy.
#   curl -fsSL https://raw.githubusercontent.com/marmuto/rudzik_theme/main/install.sh | bash
set -euo pipefail

REPO_URL="https://github.com/marmuto/rudzik_theme.git"
THEME_NAME="rudzik_theme"
THEMES_DIR="$HOME/.config/omarchy/themes"
THEME_PATH="$THEMES_DIR/$THEME_NAME"

command -v omarchy >/dev/null || { echo "Omarchy not found in PATH." >&2; exit 1; }
command -v git >/dev/null || { echo "git not found in PATH." >&2; exit 1; }

mkdir -p "$THEMES_DIR"

if [[ -d $THEME_PATH/.git ]]; then
  echo "Updating $THEME_PATH"
  git -C "$THEME_PATH" pull --ff-only
else
  echo "Cloning into $THEME_PATH"
  rm -rf "$THEME_PATH"
  git clone --depth 1 -- "$REPO_URL" "$THEME_PATH"
fi

omarchy theme set "$THEME_NAME"
echo "Rudzik installed and applied."
