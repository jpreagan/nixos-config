{ pkgs, ... }:

{
  home.shellAliases = {
    vi = "lvim";
    vim = "lvim";
  };

  programs.neovim = {
    enable = true;
    withNodeJs = true;
    extraPackages = with pkgs; [
      nodePackages.neovim
      tree-sitter
      python39Packages.pynvim

      # Nix
      rnix-lsp

      # Lua
      sumneko-lua-language-server

      # TypeScript
      nodePackages.typescript-language-server
    ];
  };
}
