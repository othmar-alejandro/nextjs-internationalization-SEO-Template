#!/bin/bash

# Next.js i18n Template Setup Script
# Usage: ./setup-new-project.sh <project-name> <destination-path>

if [ $# -eq 0 ]; then
    echo "Usage: $0 <project-name> [destination-path]"
    echo "Example: $0 my-new-app ~/Projects"
    exit 1
fi

PROJECT_NAME=$1
DESTINATION=${2:-$(pwd)}
TEMPLATE_PATH="/Users/othmarcasilla/nextjs-i18n-template"

echo "🚀 Setting up new Next.js i18n project: $PROJECT_NAME"
echo "📁 Destination: $DESTINATION/$PROJECT_NAME"

# Create project directory
mkdir -p "$DESTINATION/$PROJECT_NAME"
cd "$DESTINATION/$PROJECT_NAME"

# Copy template files
echo "📋 Copying template files..."
cp -r "$TEMPLATE_PATH"/* .

# Update package.json with new project name
echo "📝 Updating package.json..."
sed -i '' "s/\"nextjs-i18n-template\"/\"$PROJECT_NAME\"/g" package.json

# Install dependencies
echo "📦 Installing dependencies..."
npm install

echo "✅ Project setup complete!"
echo ""
echo "Next steps:"
echo "1. cd $DESTINATION/$PROJECT_NAME"
echo "2. npm run dev"
echo "3. Open http://localhost:3000"
echo ""
echo "🌍 Your app will be available in:"
echo "   - English: http://localhost:3000/en"
echo "   - Spanish: http://localhost:3000/es"
echo ""
echo "Happy coding! 🎉"
