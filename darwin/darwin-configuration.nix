{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  security.pam.enableSudoTouchIdAuth = true;
  system.defaults.dock.autohide = true;

  users.users.james = {
    name = "james";
    home = "/Users/james";
  };
  programs.zsh = {
    enable = true;
    promptInit = "autoload -U promptinit && promptinit && prompt off";
  };

  homebrew = {
    enable = true;
    taps = [ "homebrew/cask" ];
    casks = [ "rectangle" ];
  };

  services.skhd = {
    enable = true;
    skhdConfig = ''
      ctrl + cmd - return : kitty --single-instance --directory ~
    '';
  };

  system.stateVersion = 4;
}

