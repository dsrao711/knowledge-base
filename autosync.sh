#!/bin/bash
echo "Watching knowledge-base for changes..."
fswatch -o ~/knowledge-base/ | while read; do
  cd ~/knowledge-base
  git add -A
  git commit -m "auto-update $(date '+%Y-%m-%d %H:%M')"
  git push origin main
  echo "Synced to GitHub at $(date '+%H:%M:%S')"
done
