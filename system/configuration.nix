{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./intel.nix
      ./laptop.nix
      ./hidpi.nix
      ./gnome.nix
      ./virtualisation.nix
    ];

  nixpkgs.config.allowUnfree = true;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # The encrypted disk that should be opened before the root filesystem is mounted.
  boot.initrd.luks.devices.luksroot = {
    device = "/dev/disk/by-uuid/501debac-c777-404c-9b7f-27adcd6afe2f";
    preLVM = true;
  };

  # Enable fwupd, a DBus service that allows applications to update firmware.
  services.fwupd.enable = true;

  networking.hostName = "nixos"; # Define your hostname.

  # Set your time zone.
  time.timeZone = "Pacific/Honolulu";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp2s0.useDHCP = true;

  # A range of TCP ports on which incoming connections are accepted.
  networking.firewall.allowedTCPPortRanges = [{
    from = 8000;
    to = 8080;
  }];

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    keyMap = "us";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.layout = "us";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.james = {
    isNormalUser = true;
    description = "James";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };
  programs.zsh = {
    enable = true;
    promptInit = ''
      autoload -U promptinit && promptinit && prompt off && setopt prompt_sp
    '';
  };
  programs.vim.defaultEditor = true;

  # Make available some additional fonts.
  fonts.fonts = with pkgs; [
    corefonts
    emacs-all-the-icons-fonts
    inter-ui
    overpass
    ubuntu_font_family
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    curl
    git
    vim
    wget
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  system.stateVersion = "21.05";
}
