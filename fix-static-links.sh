#!/bin/bash
echo "🔍 Replace href link..."
find ./ -type f -name "*.html" -exec sed -i 's|href="http://demo-undangan-|href="/catalog/demo-undangan-|g' {} +
find ./ -type f -name "*.html" -exec sed -i 's|href="demo-undangan-|href="/catalog/demo-undangan-|g' {} +
echo "✅ Semua link sudah diawali /catalog/"

