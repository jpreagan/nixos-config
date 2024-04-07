{ pkgs, ... }:

{
  programs.go.enable = true;

  home.packages = with pkgs; [
    colordiff
    exiftool
    fd
    gh
    htop
    imagemagick
    neofetch
    pandoc
    pwgen
    tldr
    tree
    ripgrep
    wget

    # Lua
    stylua

    # Go
    gopls
    go-tools

    # Rust
    rustup
  ];
}
