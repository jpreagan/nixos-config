{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autocd = true;
    defaultKeymap = "viins";
    dirHashes = {
      n = "$HOME/.config/nix-config";
      s = "$HOME/.local/src";
      w = "$HOME/.local/www";
    };
    initExtra = ''
      # Pure prompt
      fpath+=${pkgs.pure-prompt}/share/zsh/site-functions
      autoload -U promptinit; promptinit
      prompt pure

      # Fish shell like syntax highlighting for Zsh
      source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

      # Filter history completion with what you typed
      autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
      zle -N up-line-or-beginning-search
      zle -N down-line-or-beginning-search
      bindkey '^[[A'  up-line-or-beginning-search    # Arrow up
      bindkey '^[OA'  up-line-or-beginning-search
      bindkey '^[[B'  down-line-or-beginning-search  # Arrow down
      bindkey '^[OB'  down-line-or-beginning-search

      # direnv hook
      eval "$(direnv hook zsh)"
    '';
    shellAliases = {
      ll = "ls -l";
      la = "ls -a";
      ls = "ls --color=auto";
      vi = "vim";
    };
  };

  home.packages = with pkgs; [
    direnv
  ];

}
