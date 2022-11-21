{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ curl git vim wget lemonbar-xft ];
}
