#!/bin/bash
echo "📌 Replace href=\"demo- with href=\"/demo-"
find ./ -type f -name "*.html" -exec sed -i 's|href="demo-|href="/demo-|g' {} +
echo "✅ Semua href link demo sudah diawali dengan /"

