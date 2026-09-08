#!/bin/bash

if [ ! -x "/app/diagnostic.sh" ]; then
    echo "Health check failed: diagnostic.sh is not executable"
    exit 1
fi

if ! command -v ping >/dev/null 2>&1; then
    echo "Health check failed: ping is not available"
    exit 1
fi

if ! command -v df >/dev/null 2>&1; then
    echo "Health check failed: df is not available"
    exit 1
fi

echo "Health check passed"
exit 0
