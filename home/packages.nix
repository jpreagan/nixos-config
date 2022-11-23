{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awscli2
    azure-cli
    fd
    gh
    google-cloud-sdk
    htop
    neofetch
    pscale
    pwgen
    tldr
    tree
    ripgrep

    # C/C++
    gcc
    gnumake

    # Nix
    nixfmt

    # Lua
    stylua

    # Node
    nodejs
    nodePackages.yarn
    nodePackages.pnpm

    # Python
    python39
    python39Packages.pip
    python39Packages.pynvim

    # Rust
    rustup
  ];
}