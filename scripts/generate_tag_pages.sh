#!/bin/bash

# Clean out existing tag pages
rm -rf tag/*

# Build the site
bundle exec jekyll build

# Copy generated tag pages to the right location
cp -r _site/tag/* tag/

echo "Tag pages have been generated and copied to the tag directory."
echo "Don't forget to commit and push the changes!"