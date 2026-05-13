#!/bin/bash
PORT=80
INDEX_FILE="/var/www/html/index.html"

if ! ss -tlnp | grep -q ":${PORT} "; then
    echo "FAIL: Port not listening"
    exit 1
fi

if [ ! -f "${INDEX_FILE}" ]; then
    echo "FAIL: index.html not found"
    exit 1
fi

exit 0