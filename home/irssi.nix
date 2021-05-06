{ config, pkgs, ... }:

{
  programs.irssi = {
    enable = true;
    networks = {
      freenode = {
        nick = "user";
        server = {
          address = "chat.freenode.net";
          port = 6697;
          autoConnect = true;
          ssl = {
            enable = true;
            verify = true;
          };
        };
        channels = {
          nixos.autoJoin = true;
        };
      };
    };
  };
}
