#!/bin/bash
# Creates a new lesson playground inside a chapter folder and adds it to the workspace.
#
#   scripts/new_lesson.sh <chapter> "<Lesson Name>"
#
# <chapter> is the chapter number (e.g. 2) or folder name (e.g. 02-Arrays-and-Strings).
# Example: scripts/new_lesson.sh 2 "Sliding Window"  ->  02-Arrays-and-Strings/04-Sliding-Window.playground
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

if [ $# -lt 2 ]; then
    echo "Usage: $0 <chapter number|folder> \"<Lesson Name>\""
    echo "Chapters:"
    for c in "$ROOT"/[0-9][0-9]-*/; do echo "  $(basename "$c")"; done
    exit 1
fi

chapter_arg="$1"
title="$2"

if [ -d "$ROOT/$chapter_arg" ]; then
    chapter="$ROOT/$chapter_arg"
else
    prefix="$(printf '%02d' "$((10#$chapter_arg))")"
    chapter="$(ls -d "$ROOT/$prefix"-*/ 2>/dev/null | head -1)"
    chapter="${chapter%/}"
fi
if [ -z "$chapter" ] || [ ! -d "$chapter" ]; then
    echo "Chapter '$chapter_arg' not found." >&2
    exit 1
fi

# Next lesson number in this chapter, e.g. 03
count="$(find "$chapter" -maxdepth 1 -name '*.playground' | wc -l | tr -d ' ')"
number="$(printf '%02d' "$((count + 1))")"

# "Sliding Window (Fixed)" -> "Sliding-Window-Fixed"
slug="$(echo "$title" | sed -e 's/[^A-Za-z0-9]\{1,\}/-/g' -e 's/^-//' -e 's/-$//')"
dest="$chapter/$number-$slug.playground"

if [ -e "$dest" ]; then
    echo "$dest already exists." >&2
    exit 1
fi

cp -R "$ROOT/Templates/Lesson.playground" "$dest"
escaped_title="$(printf '%s' "$title" | sed -e 's/[\/&]/\\&/g')"
sed -i '' \
    -e "s/__TITLE__/$escaped_title/" \
    -e "s/__CHAPTER__/$(basename "$chapter")/" \
    "$dest/Contents.swift"

"$ROOT/scripts/sync_workspace.sh" >/dev/null
echo "Created ${dest#$ROOT/}"
