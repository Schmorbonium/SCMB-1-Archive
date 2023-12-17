#!/bin/bash

# Directory containing the bundle files
archiveDir="./bundles"

# Check if the directory exists
if [ ! -d "$archiveDir" ]; then
    echo "Directory $archiveDir does not exist."
    exit 1
fi

# Loop through each .bundle file in the directory
for bundleFile in "$archiveDir"/*.bundle; do
    # Check if there are any .bundle files
    if [ ! -e "$bundleFile" ]; then
        echo "No .bundle files found in $archiveDir."
        break
    fi

    # Extract the base name of the repository from the bundle file name
    repoName=$(basename "$bundleFile" .bundle)

    # Clone the repository from the bundle file
    echo "Cloning $bundleFile into $repoName..."
    git clone "$bundleFile" "$repoName"

    # Check if the clone was successful
    if [ -d "$repoName" ]; then
        # Initialize and update submodules
        echo "Initializing and updating submodules for $repoName..."
        (cd "$repoName" && git submodule update --init --recursive)
    else
        echo "Failed to clone $bundleFile."
    fi
done
