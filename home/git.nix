{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "James Reagan";
    userEmail = "james@jpreagan.com";
  };
}
