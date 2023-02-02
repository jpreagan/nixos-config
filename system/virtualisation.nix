{ pkgs, ... }:

{
  virtualisation.docker.enable = true;
  users.users.james.extraGroups = [ "docker" ];
  environment.systemPackages = with pkgs; [ docker-compose ];

  virtualisation.virtualbox.host = { 
    enable = true;
    enableExtensionPack = true;
  };
  users.extraGroups.vboxusers.members = [ "james" ];
}
