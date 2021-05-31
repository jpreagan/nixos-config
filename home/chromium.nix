{ config, pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    extensions = [
      "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
      "gcbommkclmclpchllfjekcdonpmejbdp" # HTTPS Everywhere
      "pkehgijcmpdhfbdbbnkijodmdjhbjlgp" # Privacy Badger
      "fmkadmapgofadopljbjfkapdkoienihi" # React Developer Tools
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
    ];
  };
}
