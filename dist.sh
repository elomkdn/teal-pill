#!/usr/bin/env bash
#
# dist.sh — builds the release file, dist/teal-pill.plasmoid: the widget, its
# French catalog compiled. It installs offline: System Settings, or right-click a panel,
# Add Widgets…, Get New…, Install Widget From Local File; or kpackagetool6 -i <file>.

set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"
ID="com.github.elomkdn.tealpill"
rm -rf dist
mkdir -p dist/package
cp -r package/. dist/package/
mkdir -p dist/package/contents/locale/fr/LC_MESSAGES
msgfmt -o "dist/package/contents/locale/fr/LC_MESSAGES/plasma_applet_$ID.mo" po/fr.po
python3 -I -c 'import shutil, sys; shutil.make_archive(sys.argv[1], "zip", sys.argv[2])' \
  dist/teal-pill dist/package
mv dist/teal-pill.zip dist/teal-pill.plasmoid
rm -rf dist/package
echo dist/teal-pill.plasmoid
