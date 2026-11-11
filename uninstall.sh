#!/usr/bin/env bash
#
# uninstall.sh — removes the Teal Pill widget for your user, whether it came from
# ./install.sh or from the release file. Its settings go with it.
#
# Usage:
#   ./uninstall.sh
#
# Then remove its empty slot from the panel (right-click it, Remove), or restart Plasma:
# systemctl --user restart plasma-plasmashell

set -euo pipefail

ID="com.github.elomkdn.tealpill"

if ! kpackagetool6 -t Plasma/Applet -s "$ID" >/dev/null 2>&1; then
  echo "Teal Pill is not installed."
  exit 0
fi
kpackagetool6 -t Plasma/Applet -r "$ID" >/dev/null
echo "Teal Pill is removed. If it was in a panel, remove its empty slot (right-click it, Remove)."
