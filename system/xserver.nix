{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    libinput.mouse.naturalScrolling = true;
    windowManager.cwm.enable = true;
  };
  hardware.opengl = {
    enable = true;
    driSupport.enable = true;
    extraPackages = with pkgs; [ intel-compute-runtime ];
  };
}
