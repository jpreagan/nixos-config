{ pkgs, ... }:

{
  programs.kitty = if pkgs.stdenv.isDarwin then { } else {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font Mono";
      size = 16;
    };
    theme = "Tokyo Night";
    settings = {
      background_opacity = "0.97";
      disable_ligatures = "always";
      macos_titlebar_color = "dark";
    };
  };
}
