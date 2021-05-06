{ config, pkgs, ... }:

{
  # Enable setting virtual console options as early as possible (in initrd).
  console.earlySetup = true;

  # Enable larger font for hidpi screens
  console.font = "ter-132b";
  console.packages = [ pkgs.terminus_font ];
}
