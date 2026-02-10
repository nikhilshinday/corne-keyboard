#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

keymap_path="$repo_root/config/eyelash_corne.keymap"
drawer_config="$repo_root/keymap_drawer.config.yaml"
yaml_out="$repo_root/keymap-drawer/eyelash_corne.yaml"
svg_out="$repo_root/keymap-drawer/eyelash_corne.svg"

uvx --from keymap-drawer keymap -c "$drawer_config" parse -z "$keymap_path" -o "$yaml_out"
uvx --from keymap-drawer keymap -c "$drawer_config" draw "$yaml_out" -o "$svg_out"
