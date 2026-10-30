#!/bin/bash
# Compiles and runs a playground from the terminal (handy for a quick check outside Xcode).
#
#   scripts/run_lesson.sh 02-Arrays-and-Strings/01-Two-Pointers.playground
#   scripts/run_lesson.sh --all        # run every lesson, report failures
set -uo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

run_one() {
    local pg="$1"
    local tmp
    tmp="$(mktemp -d)"
    cp "$pg"/Sources/*.swift "$tmp/" 2>/dev/null
    cp "$pg/Contents.swift" "$tmp/main.swift"
    if xcrun swiftc -swift-version 5 -suppress-warnings "$tmp"/*.swift -o "$tmp/lesson" 2>"$tmp/err"; then
        "$tmp/lesson"
        local status=$?
    else
        cat "$tmp/err" >&2
        local status=1
    fi
    rm -rf "$tmp"
    return $status
}

if [ "${1:-}" = "--all" ]; then
    failed=0
    for pg in "$ROOT"/[0-9][0-9]-*/*.playground; do
        echo "=== ${pg#$ROOT/}"
        output="$(run_one "$pg" 2>&1)" || failed=$((failed + 1))
        echo "$output"
        if grep -q '❌' <<<"$output"; then failed=$((failed + 1)); fi
    done
    echo
    [ $failed -eq 0 ] && echo "All lessons passed." || echo "$failed lesson(s) had problems."
    exit $failed
fi

if [ $# -lt 1 ]; then
    echo "Usage: $0 <path/to/Lesson.playground> | --all"
    exit 1
fi
run_one "${1%/}"
