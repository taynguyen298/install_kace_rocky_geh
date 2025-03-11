#!/bin/bash

echo "🔧 Installing prerequisites (perl, cups)..."
sudo dnf install -y perl cups

echo "📦 Installing KACE Agent..."
sudo rpm -Uvh ampagent-*.rpm

echo "🧹 Cleaning up (remove cups, clean cache)..."
sudo dnf remove -y cups
sudo dnf clean all
sudo dnf autoremove -y

echo "✅ KACE Agent installation completed successfully!"
