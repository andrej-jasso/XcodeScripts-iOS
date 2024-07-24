#!/bin/sh

# Determine the project directory (assuming the script is in the project root)
project_dir="$(pwd)"

# Use osascript to open a new Terminal window and run pod install
osascript <<EOF
tell application "Terminal"
    do script "cd \"$project_dir\"; pod install"
    activate
end tell
EOF
