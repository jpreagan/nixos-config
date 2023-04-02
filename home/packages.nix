{ pkgs, ... }:

{
  programs.go.enable = true;

  home.packages = with pkgs; [
    awscli2
    azure-cli
    colordiff
    exiftool
    fd
    flyctl
    gh
    google-cloud-sdk
    htop
    mkcert
    neofetch
    nss
    pandoc
    pscale
    pwgen
    sqlc
    sqlfluff
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

    # Go
    gopls
    go-tools

    # Node
    nodejs
    nodePackages.yarn
    nodePackages.pnpm

    # Deno
    deno

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
