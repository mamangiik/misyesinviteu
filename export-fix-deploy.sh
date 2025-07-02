#!/bin/bash

echo "========================================="
echo "🚀 Starting EXPORT-FIX-DEPLOY Workflow..."
echo "========================================="

# === 1. Jalankan fix link ===
echo "🔍 Fixing href link 'demo-' to '/demo-' ..."
find ./ -type f -name "*.html" -exec sed -i 's|href="demo-|href="/demo-|g' {} +
echo "✅ Link demo di semua file HTML sudah fix!"

# === 2. Sinkron ke repo lokal ===
TARGET_REPO=~/Documents/Github/misyesinviteu

echo "🔄 Sync ke repo lokal: $TARGET_REPO ..."
rsync -av --delete --exclude='.git' ./ "$TARGET_REPO/"
echo "✅ RSYNC selesai!"

# === 3. Git add, commit, push ===
echo "🔃 Commit & Push ke GitHub..."
cd "$TARGET_REPO"
git status

git add .
git commit -m "chore: auto export, fix link, deploy"
git push origin main   # Ganti 'main' kalau kamu deploy pakai gh-pages

echo "========================================="
echo "🎉 DONE! Cek Vercel untuk hasil deploy!"
echo "========================================="

