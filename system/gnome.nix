{ config, pkgs, ... }:

{
  # Enable GNOME Display Manager.
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  # Enable the GNOME Desktop Environment.
  services.xserver.desktopManager.gnome.enable = true;
}
