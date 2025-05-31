#!/bin/bash

# Check if a name parameter was provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a name for the blog post"
    echo "Usage: $0 name-of-post"
    exit 1
fi

# Get the post name from the first argument
post_name="$1"

# Get today's date in YYYY-MM-DD format
date=$(date +%Y-%m-%d)

# Git operations
echo "Checking git status..."

# Check if we have uncommitted changes
if ! git diff-index --quiet HEAD --; then
    echo "You have uncommitted changes. Please commit or stash them first."
    exit 1
fi

# Switch to master branch
echo "Switching to master branch..."
if ! git checkout master; then
    echo "Failed to switch to master branch"
    exit 1
fi

# Pull latest changes
echo "Pulling latest changes..."
if ! git pull origin master; then
    echo "Failed to pull latest changes"
    exit 1
fi

# Create and switch to new branch
new_branch="${post_name}"
echo "Creating new branch: $new_branch"
if ! git checkout -b "$new_branch"; then
    echo "Failed to create new branch"
    exit 1
fi

# Create the post file
post_file="_posts/${date}-${post_name}.md"
if [ ! -f "$post_file" ]; then
    cat > "$post_file" << EOL
---
layout: post
title:  ""
description: ""
date:   $(date "+%Y-%m-%d %H:%M:%S")
tags: 
image: /assets/article_images/${date}-${post_name}/XYZ.jpg
image2: /assets/article_images/${date}-${post_name}/XYZ-mobile.jpg
---

EOL
    echo "Created post file: $post_file"
else
    echo "Post file already exists: $post_file"
fi

# Create the article images directory
article_images_dir="assets/article_images/${date}-${post_name}"
if [ ! -d "$article_images_dir" ]; then
    mkdir -p "$article_images_dir"
    echo "Created article images directory: $article_images_dir"
else
    echo "Article images directory already exists: $article_images_dir"
fi

# Create the excalidraw directory
excalidraw_dir="assets/excalidraw/${date}-${post_name}"
if [ ! -d "$excalidraw_dir" ]; then
    mkdir -p "$excalidraw_dir"
    echo "Created excalidraw directory: $excalidraw_dir"
else
    echo "Excalidraw directory already exists: $excalidraw_dir"
fi

echo "You are on branch: $new_branch"
echo "Done! Now edit $post_file to add your content."