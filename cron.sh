  GNU nano 7.2                                                                                cron.sh                                                                                         
#!/bin/bash

# Directory of your repo
REPO_DIR="/home/frank/github_cron"
BRANCH="main"  # Change if using a different branch

cd "$REPO_DIR" || exit

# Create/update a dummy file with timestamp
echo "Last commit: $(date)" > heartbeat.txt

# Stage changes
git add .

# Commit with timestamp
git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
git push origin "$BRANCH"

echo "✅ Dummy commit pushed at $(date)"
