{ pkgs, ... }:

{
  programs.go = {
    enable = true;
    goBin = ".local/bin";
  };

  home.packages = with pkgs; [
    colordiff
    exiftool
    fd
    flyctl
    gh
    htop
    imagemagick
    neofetch
    pandoc
    pure-prompt
    pwgen
    tldr
    tree
    ripgrep
    wget

    # Go
    gopls
    go-tools

    # Java
    jdk
    maven

    # Lua
    stylua

    # Nix
    nixd
    nixpkgs-fmt

    # Python
    python312
    python312Packages.pip
    poetry
    python312Packages.huggingface-hub

    # Rust
    rustup
  ];
}
