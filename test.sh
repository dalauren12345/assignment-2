#!/bin/bash

fail=0

docker run --rm diagnostic-tool help >/dev/null || {
    echo "FAIL: help command"
    fail=1
}

docker run --rm diagnostic-tool system >/dev/null || {
    echo "FAIL: system command"
    fail=1
}

docker run --rm diagnostic-tool disk >/dev/null || {
    echo "FAIL: disk command"
    fail=1
}

if docker run --rm diagnostic-tool invalid >/dev/null 2>&1; then
    echo "FAIL: invalid command should fail"
    fail=1
else
    echo "PASS: invalid command rejected"
fi

if [ "$fail" -eq 0 ]; then
    echo "All Docker tests passed."
    exit 0
else
    echo "Some Docker tests failed."
    exit 1
fi
