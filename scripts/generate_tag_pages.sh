#!/bin/bash

# Clean out existing tag pages and create directories
rm -rf tags/* _tag_pages/*
mkdir -p tags _tag_pages

# Get tags from all posts and clean them up
find _posts -type f -name "*.md" -exec grep -h "^tags:" {} \; | \
  sed 's/tags:[[:space:]]*\[\?\([^]]*\)\]*/\1/g' | \
  tr ' ' '\n' | \
  sed '/^[[:space:]]*$/d' | \
  sed 's/[^a-zA-Z0-9-]//g' | \
  sort -u | while read -r tag_name; do
  
  if [ ! -z "$tag_name" ]; then
    cat > "_tag_pages/${tag_name}.md" <<EOF
---
layout: tags_index
title: Posts tagged "${tag_name}"
permalink: /tags/${tag_name}/
tag: ${tag_name}
---
EOF
  fi
done

# Build the site
bundle exec jekyll build

# Copy generated tag pages
mkdir -p tags
cp -r _site/tags/* tags/

echo "Tag pages have been generated and copied to the tags directory."
echo "Don't forget to commit and push the changes!"