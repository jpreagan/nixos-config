{ config, pkgs, ... }:

{
  programs.zsh.envExtra = ''
    export PATH="$HOME/.config/emacs/bin:$PATH"
  '';

  home.packages = with pkgs; [
    # doom emacs required dependencies
    git
    emacs
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
    nodePackages.js-beautify
    nodePackages.stylelint
  ];
}
