{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nodejs_latest
    yarn
  ];
}
