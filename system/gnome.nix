{ config, pkgs, ... }:

{
  # Enable the GNOME 3 Desktop Environment.
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  services.xserver.desktopManager.gnome3.enable = true;
  environment.systemPackages = with pkgs; [
    gnome3.gnome-tweak-tool
    yaru-theme
  ];
  environment.gnome3.excludePackages = with pkgs; [
    epiphany
    gnome3.cheese
    gnome3.eog
    gnome3.gnome-calendar
    gnome3.gnome-characters
    gnome3.gnome-clocks
    gnome3.gnome-contacts
    gnome3.gnome-logs
    gnome3.gnome-maps
    gnome3.gnome-music
    gnome3.gnome-screenshot
    gnome3.gnome-system-monitor
    gnome3.gnome-weather
    gnome3.simple-scan
    gnome3.totem
    gnome3.yelp
    gnome-connections
    gnome-photos
  ];
}
