{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    php74
    php74Packages.composer
  ];
}
