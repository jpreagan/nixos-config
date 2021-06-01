{ config, pkgs, ... }:

{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/emacs-overlay/archive/master.tar.gz;
    }))
  ];

  programs.zsh.envExtra = ''
    export PATH="$HOME/.config/emacs/bin:$PATH"
  '';

  home.packages = with pkgs; [
    # doom emacs required dependencies
    git
    binutils # native-comp needs 'as', provided by this
    emacsPgtkGcc
    # doom emacs optional dependencies
    ripgrep
    coreutils
    fd
    clang
    # :checkers spell
    (aspellWithDicts (ds: with ds; [
      en en-computers en-science
    ]))
    # :checkers grammar
    languagetool
    # :tools editorconfig
    editorconfig-core-c # per-project style config
    # :lang javascript
    nodejs_latest
    nodePackages.javascript-typescript-langserver
    # :lang json
    jq
    # :lang markdown
    pandoc
    # :lang nix
    nixfmt
    # :lang sh
    shellcheck
    # :lang web
    html-tidy
    nodePackages.js-beautify
    nodePackages.stylelint
  ];
}
