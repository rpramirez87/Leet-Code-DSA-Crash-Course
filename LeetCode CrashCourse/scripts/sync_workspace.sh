#!/bin/bash
# Regenerates CrashCourse.xcworkspace from the chapter folders on disk.
# Run it after adding, renaming or deleting a playground by hand.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WORKSPACE="$ROOT/CrashCourse.xcworkspace"
mkdir -p "$WORKSPACE"

xml_escape() {
    sed -e 's/&/\&amp;/g' -e 's/</\&lt;/g' -e 's/>/\&gt;/g' -e 's/"/\&quot;/g' <<<"$1"
}

{
    echo '<?xml version="1.0" encoding="UTF-8"?>'
    echo '<Workspace'
    echo '   version = "1.0">'
    echo '   <FileRef'
    echo '      location = "group:README.md">'
    echo '   </FileRef>'
    for chapter in "$ROOT"/[0-9][0-9]-*/; do
        name="$(xml_escape "$(basename "$chapter")")"
        echo '   <Group'
        echo "      location = \"container:$name\""
        echo "      name = \"$name\">"
        for pg in "$chapter"*.playground; do
            [ -e "$pg" ] || continue
            echo '      <FileRef'
            echo "         location = \"group:$(xml_escape "$(basename "$pg")")\">"
            echo '      </FileRef>'
        done
        echo '   </Group>'
    done
    echo "</Workspace>"
} > "$WORKSPACE/contents.xcworkspacedata"

echo "Updated $(basename "$WORKSPACE")"
