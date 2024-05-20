#!/bin/bash

# Update global npm packages
npm update -g

# Upgrade all GitHub CLI extensions
gh extension upgrade --all

# Update rust
rustup update

# Update kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Update google-cloud-sdk
gcloud components update

# Upgrade paperspace 
pspace upgrade

# Upgrade nix-darwin
cd ~/.config/nix-darwin
nix flake update
darwin-rebuild switch --flake ~/.config/nix-darwin
