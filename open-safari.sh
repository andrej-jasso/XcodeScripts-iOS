#!/bin/sh

# Get the remote repository URL from Git configuration
remote_url=$(git config --get remote.origin.url)

# Convert SSH URL to HTTPS URL if necessary
if [[ $remote_url == git@* ]]; then
    remote_url=$(echo $remote_url | sed -e 's|:|/|' -e 's|git@|https://|')
fi

# Remove .git suffix if present
remote_url=$(echo $remote_url | sed -e 's|\.git$||')

# Open the URL in Safari
open -a Safari "$remote_url"
