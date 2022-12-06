{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
      [
        dbaeumer.vscode-eslint
        esbenp.prettier-vscode
        github.github-vscode-theme
        ms-azuretools.vscode-docker
        prisma.prisma
        vscodevim.vim
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
        name = "tokyo-night";
        publisher = "enkia";
        version = "0.9.4";
        sha256 = "0v1hkv8smwp64c0danrln39h0lgqa2dwiiy45rx29s9qmq3j9am4";
      }];
  };
}
