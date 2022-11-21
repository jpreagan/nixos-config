{ pkgs, ... }:

{
  users.users.james = {
    isNormalUser = true;
    home = "/home/james";
    description = "James";
    extraGroups = [ "wheel" "networkmanager" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAYm2AzlibFa1f1tPqhQSAp9KfCQnH0oYAkxKYL1XPvg james@jpreagan.com"
    ];
    shell = pkgs.zsh;
  };
  programs.zsh = { enable = true; };
  programs.vim.defaultEditor = true;
}
