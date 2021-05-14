{ config, pkgs, ... }:

{
  # Enable GNOME Display Manager.
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweak-tool
  ];
  # Enable the GNOME Desktop Environment.
  services.xserver.desktopManager.gnome.enable = true;
}
