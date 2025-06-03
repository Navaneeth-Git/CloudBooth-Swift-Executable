# CloudBooth

A macOS application that automatically syncs your Photo Booth pictures to iCloud Drive with a simple click.

![CloudBooth App](https://github.com/yourusername/CloudBooth/raw/main/screenshots/app-screenshot.png)

## Features

- One-click sync from Photo Booth Library to iCloud Drive
- Progress tracking of file operations with detailed status updates
- Automatic folder creation in iCloud Drive
- Skip already synced files to avoid duplicates
- Menu bar support with keyboard shortcuts
- Native macOS UI with SwiftUI

## Requirements

- macOS 13.0 or later
- Xcode 15.0 or later
- Swift 6.1 or later

## Installation

### Option 1: Build from Source

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/CloudBooth.git
   cd CloudBooth
   ```

2. Build the application using Swift Package Manager:
   ```
   swift build
   ```

3. Run the application:
   ```
   swift run
   ```

### Option 2: Using Xcode

1. Open the project in Xcode:
   ```
   xed .
   ```

2. Build and run using Xcode's Run button (⌘R)

## Usage

1. Launch the CloudBooth application
2. Click the "Sync Now" button or use the keyboard shortcut (⌘S)
3. Grant permission to access your Photo Booth library and iCloud Drive when prompted
4. Wait for the sync to complete

The app will create a "photobooth" folder in your iCloud Drive and copy all Photo Booth photos there.

## File Paths

- Source: `/Users/[username]/Pictures/Photo Booth Library/Pictures`
- Destination: `/Users/[username]/Library/Mobile Documents/com~apple~CloudDocs/photobooth`

## Permissions

The application requires access to:
- Your Photo Booth library
- Your iCloud Drive

You'll be prompted to grant these permissions when you first run the app.

## Keyboard Shortcuts

- ⌘S: Sync Now
- ⌘R: Refresh/Check Permissions

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License. 