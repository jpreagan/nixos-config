{ config, pkgs, ... }:

{
  # Enable Docker.
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [
    docker-compose
  ];
  users.users.james.extraGroups = [ "docker" ];

  # Enable VirtualBox.
  virtualisation.virtualbox.host = {
    enable = true;
    enableExtensionPack = true;
  };
  users.extraGroups.vboxusers.members = [ "james" ];
}
