#!/bin/bash

# Set variables
APP_NAME="CloudBooth"
OUTPUT_DIR="$PWD/build"
BUNDLE_IDENTIFIER="com.navaneeth.CloudBooth"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Build the Swift package
echo "Building Swift package..."
swift build -c release

# Get the path to the built executable
EXECUTABLE_PATH=$(swift build -c release --show-bin-path)/$APP_NAME

# Create app bundle structure
echo "Creating app bundle..."
APP_BUNDLE="$OUTPUT_DIR/$APP_NAME.app"
mkdir -p "$APP_BUNDLE/Contents/MacOS"
mkdir -p "$APP_BUNDLE/Contents/Resources"

# Copy executable
cp "$EXECUTABLE_PATH" "$APP_BUNDLE/Contents/MacOS/$APP_NAME"

# Copy resources
if [ -d "Sources/CloudBooth/Assets.xcassets" ]; then
    cp -R Sources/CloudBooth/Assets.xcassets "$APP_BUNDLE/Contents/Resources/"
fi

# Create Info.plist in the app bundle
cp Sources/CloudBooth/Info.plist "$APP_BUNDLE/Contents/"

# Update Info.plist to enable accessibility 
/usr/libexec/PlistBuddy -c "Add :NSAppleEventsUsageDescription string 'CloudBooth needs access to show file selection dialogs.'" "$APP_BUNDLE/Contents/Info.plist" 2>/dev/null || \
/usr/libexec/PlistBuddy -c "Set :NSAppleEventsUsageDescription 'CloudBooth needs access to show file selection dialogs.'" "$APP_BUNDLE/Contents/Info.plist"

# Copy entitlements file to Resources
cp Sources/CloudBooth/CloudBooth.entitlements "$APP_BUNDLE/Contents/Resources/"

# Create PkgInfo file
echo "APPL????" > "$APP_BUNDLE/Contents/PkgInfo"

echo "App bundle created at $APP_BUNDLE"

# Code signing is essential for the permissions to work properly
echo "Code signing app with entitlements..."
codesign --force --deep --options runtime --entitlements Sources/CloudBooth/CloudBooth.entitlements --sign "-" "$APP_BUNDLE"

echo "Build completed! You should now have a properly signed app with file permissions."
echo "Note: The app is signed with an ad-hoc signature. For distribution to others, use a Developer ID."

echo ""
echo "IMPORTANT: The first time you run the app, you may need to:"
echo "1. Grant permission in System Settings > Privacy & Security > Accessibility"
echo "2. Grant permission in System Settings > Privacy & Security > Full Disk Access"
echo "" 