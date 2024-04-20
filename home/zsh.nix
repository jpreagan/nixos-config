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
      source ~/.local/share/google-cloud-sdk/completion.zsh.inc
    '';
    profileExtra = ''
      path=($HOME/bin
            $HOME/.local/bin
            $HOME/.local/share/google-cloud-sdk/bin
            $HOME/.cargo/bin
            $HOME/Library/Python/3.12/bin
            /Library/Frameworks/Python.framework/Versions/3.12/bin
            /opt/local/bin
            $path)
    '';
  };
}

