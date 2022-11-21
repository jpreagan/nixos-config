{ ... }:

{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    history.path = "$ZDOTDIR/.zsh_history";
    prezto = {
      enable = true;
      editor.keymap = "vi";
      pmodules = [
        "environment"
        "terminal"
        "editor"
        "history"
        "directory"
        "spectrum"
        "utility"
        "completion"
        "syntax-highlighting"
        "history-substring-search"
        "autosuggestions"
        "prompt"
      ];
      prompt.theme = "pure";
    };
    initExtra = ''
      PURE_PROMPT_SYMBOL='▶'
      PURE_PROMPT_VICMD_SYMBOL='◀'
    '';
    profileExtra = ''
      path=($HOME/bin
            $HOME/.local/bin
            $HOME/.cargo/bin
            $path)
    '';
  };
}

