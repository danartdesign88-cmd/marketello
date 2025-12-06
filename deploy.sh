#!/bin/bash
set -e
echo "Deploying Marketello..."

# Initialize git and push to GitHub
git init
git branch -M main
echo "Add your GitHub repo URL:"
read repo
git remote add origin $repo
git add .
git commit -m "Initial commit"
git push -u origin main

echo "Done! Set your secrets in GitHub Actions before deploying."
