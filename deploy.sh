#!/bin/bash

echo "📦 Cleaning old build..."
bundle exec jekyll clean

echo "🛠️  Building new site..."
bundle exec jekyll build

echo "🚀 Deploying to Vultr..."
rsync -avz --delete _site/ root@files.olega.org:/var/www/olega.org/

echo "✅ Deployment complete."
