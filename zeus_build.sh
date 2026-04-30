#!/bin/bash

# Exit immediately if a command fails
set -e

# -------- CONFIG --------
REPO_URL="https://github.com/sushrut-bhokre/harvester-installer.git"
CLONE_DIR="harvester-installer"
# ------------------------

echo "📦 Cloning repository..."
git clone  "$REPO_URL" "$CLONE_DIR"

echo "📂 Moving into repo directory..."
cd "$CLONE_DIR"
chmod +x ./scripts/*
cd ..

echo "🔧 Running make..."
sudo -E make

echo "💿 Running make build-iso..."
sudo -E make build-iso

echo "✅ Build completed successfully!"