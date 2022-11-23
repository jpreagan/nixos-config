{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ./users.nix
    ./xserver.nix
    ./virtualisation.nix
    ./chromium.nix
    ./fonts.nix
    ./packages.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  hardware.enableAllFirmware = true;
  powerManagement.powertop.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices.luksroot = {
    device = "/dev/disk/by-uuid/544dd1f3-aeb8-45d8-86f1-9de7fa8ac9d6";
    preLVM = true;
  };

  services.fwupd.enable = true;

  time.timeZone = "Pacific/Honolulu";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "ter-v32n";
    earlySetup = true;
    useXkbConfig = true;
    packages = [ pkgs.terminus_font ];
  };

  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  system.stateVersion = "22.05";
}
