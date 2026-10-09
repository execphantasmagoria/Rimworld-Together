#!/usr/bin/env fish

# Commit 1a072bd06a1fa5bd2ed990e369dc5bf2e146324a: 'Play Together' button works but server cannot connect.

echo "Building the mod..."
make build-client
if test $status -ne 0
    echo "Build failed. Please check the output for errors."
    exit 1
end
echo "Copying mod files to the game directory..."
rsync -av --exclude='.git' ./ "$HOME/Games/Installations/RimWorld.v1.6.4543/game/Mods/3005289691/"
echo "Mod files copied successfully!"
