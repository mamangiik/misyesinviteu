#!/bin/bash

echo "🔍 Mencari dan mengganti semua link demo..."

# Ganti semua href="http://demo-undangan- dengan href="/catalog/demo-undangan-
find ./ -type f -name "*.html" -exec sed -i 's|href="http://demo-undangan-|href="/catalog/demo-undangan-|g' {} +

echo "✅ Semua link href sudah diperbaiki ke /catalog/"

# Opsi: Cek hasilnya
grep -r 'href="http://demo-' .
grep -r 'href="/catalog/demo-' .

