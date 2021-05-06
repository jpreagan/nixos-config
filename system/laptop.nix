{ config, pkgs, ... }:

{
  # Enable the TLP power management daemon.
  services.tlp.enable = true;

  # Enable fix for Intel CPU throttling.
  services.throttled.enable = true;
}
