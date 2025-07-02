#!/bin/bash
echo "📌 Replace href=\"demo- with href=\"/catalog/demo-"
find ./catalog -type f -name "*.html" -exec sed -i 's|href="demo-|href="/catalog/demo-|g' {} +
echo "✅ Semua href link demo sudah diawali dengan /catalog/"

