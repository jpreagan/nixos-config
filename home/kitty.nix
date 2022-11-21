{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font Mono";
      size = 16;
    };
    theme = "Tokyo Night";
    settings = {
      macos_titlebar_color = "dark";
      macos_quit_when_last_window_closed = pkgs.stdenv.isDarwin;
    };
  };
}
