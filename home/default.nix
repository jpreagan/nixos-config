{ config, pkgs, ... }:

{
  imports =
    [ ./zsh.nix ./kitty.nix ./git.nix ./nvim.nix ./packages.nix ];

  home.username = "james";
  home.homeDirectory = if pkgs.stdenv.isDarwin then "/Users/james" else "/home/james";

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}
