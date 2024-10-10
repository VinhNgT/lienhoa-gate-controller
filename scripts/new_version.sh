#!/bin/bash

export WORKSPACE_PATH=$(git rev-parse --show-toplevel)

# Get version from user input.
while true; do
    read -p "Enter new version (format X.Y.Z or X.Y.Z-dev.0): " version
    if [[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+(-dev\.[0-9]+)?$ ]]; then
        break
    else
        echo "Invalid version format. Please enter a version in the format X.Y.Z or X.Y.Z-dev.0."
    fi
done

# Check if user wants to push to origin.
while true; do
    read -p "Do you want to push to origin? (y/N, default is N): " push_to_origin
    push_to_origin=${push_to_origin:-N}
    if [[ "$push_to_origin" =~ ^[yYnN]$ ]]; then
        break
    else
        echo "Invalid input. Please enter 'y' or 'n'."
    fi
done

# Create a JSON string from user inputs.
# Read the current build number from .appversion if it exists.
if [ -f "$WORKSPACE_PATH/.appversion" ]; then
    current_build_num=$(jq -r '.build_number // 0' "$WORKSPACE_PATH/.appversion")
else
    current_build_num=0
fi

# Increment the build number by one.
build_num=$((current_build_num + 1))

# Create a JSON string from user inputs.
json_string=$(jq -n \
    --arg version "$version" \
    --arg build "$build_num" \
    '{version: $version, build_number: ($build | tonumber)}')

# Update .appversion and create a commit with.
echo "$json_string" >"$WORKSPACE_PATH/.appversion"
if ! git diff --quiet "$WORKSPACE_PATH/.appversion" ||
    ! git ls-files --error-unmatch "$WORKSPACE_PATH/.appversion" &>/dev/null; then

    git add "$WORKSPACE_PATH/.appversion"
    git commit -m "chore: update number version to $version"
else
    echo "No changes in .appversion, skipping commit."
fi

# Create a tag with the new version. Delete the tag if it already exists.
if git tag -l | grep -q "release-v$version"; then
    git tag -d "release-v$version"
fi
git tag "release-v$version"
echo "Created tag 'release-v$version'"

# Push to origin if user wants to.
if [[ "$push_to_origin" =~ ^[Yy]$ ]]; then
    git push origin

    if git ls-remote --tags origin | grep -q "refs/tags/release-v$version"; then
        git push origin --delete "release-v$version"
    fi
    git push origin "release-v$version"
fi
