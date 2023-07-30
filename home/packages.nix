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
    wget

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
    (python311.withPackages (ps: [
      ps.black
      ps.jupyterlab
      ps.pip
      ps.pynvim
      ps.requests
      ps.virtualenv
    ]))
    pipenv

    # Rust
    rustup
  ];
}
