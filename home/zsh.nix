{ ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion.enable = true;
    defaultKeymap = "viins";
    dotDir = ".config/zsh";
    envExtra = ''
      export PATH="$HOME/.paperspace/bin:$PATH"
      export PATH="$HOME/.local/share/google-cloud-sdk/bin:$PATH"
      export PATH="$HOME/.local/bin:$PATH"
    '';
    history = {
      ignoreAllDups = true;
      ignorePatterns = [ "* --help" "cd" "clear" "date" "exit" "history" "ls" "pwd" "rm *" "rmdir *" ];
      ignoreSpace = false;
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
      gco = "git checkout";
    };
    syntaxHighlighting.enable = true;
  };
}

