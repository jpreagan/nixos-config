{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "james";
  home.homeDirectory = "/home/james";

  imports = [
    ./zsh.nix
    ./vim.nix
    ./emacs.nix
    ./git.nix
    ./node.nix
    ./irssi.nix
    ./gnome.nix
    ./firefox.nix
    ./chromium.nix
  ];

  home.packages = with pkgs; [
    curl
    dig
    feh
    file
    foliate
    gimp
    htop
    imagemagick
    inkscape
    libreoffice
    neofetch
    nmap
    tldr
    tree
    unzip
    wget
    youtube-dl
    zip
    zoom-us
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";
}
