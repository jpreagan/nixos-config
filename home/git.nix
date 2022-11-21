{ ... }:

{
  programs.git = {
    enable = true;
    userEmail = "james@jpreagan.com";
    userName = "James Reagan";
    extraConfig = { init.defaultBranch = "main"; };
  };
}
