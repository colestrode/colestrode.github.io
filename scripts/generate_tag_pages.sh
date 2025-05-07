#!/bin/bash

# Clean out existing tag pages and create directories
rm -rf tags/* _tag_pages/*
mkdir -p tags _tag_pages

# Create individual tag pages from Jekyll tags
find _posts -type f -name "*.md" -exec grep -h "^tags:" {} \; | \
  sed 's/^tags:[[:space:]]*//g' | \
  tr ' ' '\n' | \
  sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | \
  grep -v '^$' | \
  sort -u | while read -r tag; do
    # Remove any remaining quotes and spaces
    tag=$(echo "$tag" | sed 's/"//g' | sed "s/'//g" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    
    if [ ! -z "$tag" ]; then
      mkdir -p "tags/$tag"
      cat > "_tag_pages/${tag}.md" <<EOF
---
layout: tags_index
title: Posts tagged "${tag}"
permalink: /tags/${tag}/
image: /assets/images/cover.jpg
image2: /assets/images/cover-mobile.jpg
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