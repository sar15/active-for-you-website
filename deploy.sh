#!/bin/bash

# Active For You - Quick Deployment Script
# This script helps you deploy to Vercel quickly

echo "🚀 Active For You - Vercel Deployment"
echo "======================================"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
    echo ""
fi

# Check if files are staged
echo "📝 Staging files for deployment..."
git add index.html vercel.json .vercelignore .gitignore
echo "✅ Files staged"
echo ""

# Commit changes
echo "💾 Committing changes..."
read -p "Enter commit message (or press Enter for default): " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update website"
fi
git commit -m "$commit_msg"
echo "✅ Changes committed"
echo ""

# Check if remote exists
if ! git remote | grep -q "origin"; then
    echo "⚠️  No remote repository found"
    echo "Please add your GitHub repository:"
    echo ""
    read -p "Enter your GitHub repository URL: " repo_url
    if [ ! -z "$repo_url" ]; then
        git remote add origin "$repo_url"
        echo "✅ Remote added"
    fi
    echo ""
fi

# Push to GitHub
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main
echo "✅ Pushed to GitHub"
echo ""

echo "🎉 Deployment Complete!"
echo ""
echo "Next steps:"
echo "1. Go to https://vercel.com/new"
echo "2. Import your GitHub repository"
echo "3. Click Deploy"
echo "4. Add your custom domain in Vercel settings"
echo ""
echo "📖 See VERCEL_DEPLOYMENT.md for detailed instructions"
echo ""
