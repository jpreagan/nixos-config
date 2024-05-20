{ ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion.enable = true;
    defaultKeymap = "viins";
    dirHashes = {
      dl = "$HOME/Downloads";
      src = "$HOME/Downloads";
    };
    dotDir = ".config/zsh";
    envExtra = ''
      export PATH="$HOME/.local/share/google-cloud-sdk/bin:$PATH"
      export PATH="$HOME/.local/bin:$PATH"
    '';
    history = {
      ignoreAllDups = true;
      ignorePatterns = [ "* --help" "cd" "clear" "date" "exit" "history" "ls" "pwd" "rm *" "rmdir *" ];
      path = "$ZDOTDIR/.zsh_history";
    };
    historySubstringSearch.enable = true;
    initExtra = ''
      autoload -U promptinit; promptinit
      prompt pure
      PURE_PROMPT_SYMBOL='▶'
      PURE_PROMPT_VICMD_SYMBOL='◀'

      if [ -f "$HOME/.local/share/google-cloud-sdk/completion.zsh.inc" ]; then
        source "$HOME/.local/share/google-cloud-sdk/completion.zsh.inc"
      fi
    '';
    shellAliases = {
      ls = "ls --color=auto";
    };
    syntaxHighlighting.enable = true;
    zsh-abbr = {
      enable = true;
      abbreviations = {
        gco = "git checkout";
      };
    };
  };
}

