{ config, pkgs, ... }:

{
  imports =
    [ ./zsh.nix ./kitty.nix ./git.nix ./nvim.nix ./packages.nix ];

  home.username = "james";
  home.homeDirectory = "/Users/james";

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}

