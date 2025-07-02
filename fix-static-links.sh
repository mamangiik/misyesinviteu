#!/bin/bash
echo "📌 Ganti link /wordpress/catalog jadi domain Vercel..."

find . -type f -name "*.html" -exec sed -i 's|/wordpress/catalog|https://misyesinviteu.vercel.app/catalog|g' {} +

echo "✅ Semua link sudah diganti!"

