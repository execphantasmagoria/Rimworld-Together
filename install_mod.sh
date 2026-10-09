#!/usr/bin/env fish

echo "Building the mod..."
make build-client
if test $status -ne 0
    echo "Build failed. Please check the output for errors."
    exit 1
end
echo "Copying mod files to the game directory..."
rsync -av --exclude='.git' ./ "$HOME/Games/Installations/RimWorld.v1.6.4543/game/Mods/3005289691/"
echo "Mod files copied successfully!"