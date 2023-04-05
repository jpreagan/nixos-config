{
  networking = {
    hostName = "tallyho";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ ];
    };
  };
  services.openssh = {
    enable = true;
    settings = {
      kbdInteractiveAuthentication = false;
      passwordAuthentication = false;
    };
  };
}
