{ pkgs, ... }:

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

  environment.systemPackages = with pkgs; [ chromium ungoogled-chromium ];
}

