{ config, pkgs, ... }:

{
  boot.initrd.kernelModules = [ "i915" ];

  # Update the CPU microcode for Intel processors.
  hardware.cpu.intel.updateMicrocode = true;

  # Use the generic driver and enable Glamor
  services.xserver = {
    videoDrivers = [ "modesetting" ];
    useGlamor = true;
  };

  # Enable hardware video acceleration.
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-media-driver
    ];
  };
}
