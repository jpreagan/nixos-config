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
      background_opacity = "0.97";
      macos_titlebar_color = "dark";
      macos_quit_when_last_window_closed = pkgs.stdenv.isDarwin;
    };
  };
}
