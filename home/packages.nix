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
    github-copilot-cli
    google-cloud-sdk
    htop
    imagemagick
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
    wget
    zola

    # C/C++
    gcc
    gnumake

    # Java
    jdk20

    # Nix
    nixfmt

    # Lua
    stylua

    # Go
    gopls
    go-tools

    # JavaScript
    bun
    deno
    nodejs
    nodePackages.yarn
    nodePackages.pnpm

    # PHP
    php82
    php82Packages.composer

    # Python
    (python311.withPackages (ps: with ps; [
      black
      #jupyterlab
      pip
      pynvim
      requests
      virtualenv
    ]))
    pipenv

    # Rust
    rustup
  ];
}
