#!/bin/bash

echo "🔍 Menjalankan fix-static-links.sh ..."
echo "📌 Replace href=\"demo- dengan href=\"/demo-"

find ./ -type f -name "*.html" -exec sed -i 's|href="demo-|href="/demo-|g' {} +

echo "✅ Semua href link demo sudah diawali dengan /"

