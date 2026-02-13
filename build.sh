#!/bin/sh
mkdir -p dist
cp -a public/. dist/
cp index.html dist/
for f in header.svg og-image.svg ai.txt llms.txt llms-full.txt SKILL.md; do
  [ -f "$f" ] && cp "$f" dist/
done
