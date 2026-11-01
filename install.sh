#!/usr/bin/env bash
# ==============================================================================
# opendesign-web-skill · 1-Click Installer for OpenCode
# Works on Linux, macOS, WSL2, and Android (Termux)
# ==============================================================================
set -euo pipefail

SKILL_NAME="opendesign-web"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🎨 Installing ${SKILL_NAME} for OpenCode..."

# 1. Determine OpenCode skills directory
if [ -n "${OPENCODE_CONFIG_DIR:-}" ]; then
  TARGET_SKILLS_DIR="${OPENCODE_CONFIG_DIR}/skills/${SKILL_NAME}"
elif [ -d "${HOME}/.config/opencode" ] || [ -f "${HOME}/.config/opencode/opencode.jsonc" ]; then
  TARGET_SKILLS_DIR="${HOME}/.config/opencode/skills/${SKILL_NAME}"
elif [ -n "${PREFIX:-}" ] && [ -d "${HOME}/.config/opencode" ]; then
  # Termux path
  TARGET_SKILLS_DIR="${HOME}/.config/opencode/skills/${SKILL_NAME}"
else
  TARGET_SKILLS_DIR="${HOME}/.config/opencode/skills/${SKILL_NAME}"
fi

mkdir -p "${TARGET_SKILLS_DIR}"
cp "${SCRIPT_DIR}/SKILL.md" "${TARGET_SKILLS_DIR}/SKILL.md"

echo "✅ Skill registered at: ${TARGET_SKILLS_DIR}/SKILL.md"

# 2. Check for OpenDesign library
CANDIDATES=(
  "${OPEN_DESIGN_PATH:-}"
  "${HOME}/projects/open-design"
  "${HOME}/open-design"
  "/home/qwerty/projects/open-design"
  "${SCRIPT_DIR}/../open-design"
)

FOUND_OD=""
for candidate in "${CANDIDATES[@]}"; do
  if [ -n "${candidate}" ] && [ -d "${candidate}/design-systems" ]; then
    FOUND_OD="${candidate}"
    break
  fi
done

if [ -n "${FOUND_OD}" ]; then
  echo "✅ Found OpenDesign design systems at: ${FOUND_OD}/design-systems"
  echo "🚀 Status: READY TO RUN"
else
  echo ""
  echo "⚠️  OpenDesign library (design-systems) was not found in standard paths."
  echo "   The Art-Director needs the static design tokens and templates to function."
  echo ""
  echo "   To download the library without installing heavy runtime dependencies, run:"
  echo "   git clone --depth 1 https://github.com/nexu-io/open-design.git ~/projects/open-design"
  echo ""
fi

echo "🎉 Installation complete! Start OpenCode and ask: 'Подбери дизайн для моего проекта' or 'Сделай сайт в стиле OpenDesign'."
