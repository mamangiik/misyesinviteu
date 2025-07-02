#!/bin/bash
# Jalankan fix link
bash ./fix-static-links.sh

# Git push ke repo
git add .
git commit -m "chore: update static site with fixed links"
git push origin main  # atau gh-pages sesuai branch-mu
