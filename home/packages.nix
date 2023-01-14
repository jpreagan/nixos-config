{ pkgs, ... }:

{
  programs.go.enable = true;

  home.packages = with pkgs; [
    awscli2
    azure-cli
    fd
    gh
    google-cloud-sdk
    htop
    mkcert
    neofetch
    nss
    pscale
    pwgen
    tldr
    tree
    nodePackages.vercel
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

    # PHP
    php82
    php82Packages.composer

    # Python
    python39
    python39Packages.pip
    python39Packages.pynvim

    # Rust
    rustup
  ];
}
