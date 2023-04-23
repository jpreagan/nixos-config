{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
      [
        astro-build.astro-vscode
        bradlc.vscode-tailwindcss
        dbaeumer.vscode-eslint
        denoland.vscode-deno
        eamodio.gitlens
        esbenp.prettier-vscode
        github.vscode-pull-request-github
        github.github-vscode-theme
        golang.go
        graphql.vscode-graphql
        ms-azuretools.vscode-docker
        ms-python.vscode-pylance
        ms-python.python
        prisma.prisma
        vscodevim.vim
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "tokyo-night";
          publisher = "enkia";
          version = "0.9.4";
          sha256 = "0v1hkv8smwp64c0danrln39h0lgqa2dwiiy45rx29s9qmq3j9am4";
        }
        {
          name = "vscode-jest";
          publisher = "Orta";
          version = "5.1.0";
          sha256 = "08b3jrwm3rrwkkq8ybiak6r9d7hp4whjnpdji72jy0344xid1nqa";
        }
        {
          name = "vitest-explorer";
          publisher = "zixuanchen";
          version = "0.2.37";
          sha256 = "1ZqNSFi9hS4rjYJrjMBerrV57zI231Vd5qDw2bzyVjU=";
        }
        {
          name = "copilot-labs";
          publisher = "github";
          version = "0.7.632";
          sha256 = "1sMC0xPWseIRXXVsMrisN3A4br36S9pp9hYzsSjanKM=";
        }
        {
          name = "vscode-mdx";
          publisher = "unifiedjs";
          version = "1.2.2";
          sha256 = "EYjyjnwWrdr95CTwgbBmooJB/Tu8QUHDUyIDS72xNa0=";
        }
        {
          name = "copilot-nightly";
          publisher = "github";
          version = "1.78.10605";
          sha256 = "RgEnN0G4xiv/61p/R/fUNa+jOpt6J++/ZywJGg4el4c=";
        }
      ];
    userSettings = {
      "editor.fontFamily" = "'JetBrains Mono', monospace";
      "workbench.colorTheme" = "Tokyo Night";
      "window.zoomLevel" = 1;
      "prettier.documentSelectors" = [ "**/*.astro" ];
      "editor.inlineSuggest.enabled" = true;
      "editor.minimap.enabled" = false;
      "editor.formatOnSave" = true;
      "workbench.startupEditor" = "none";
      "[astro]" = { "editor.defaultFormatter" = "astro-build.astro-vscode"; };
      "[python]" = {
        "editor.defaultFormatter" = "ms-python.python";
        "editor.formatOnType" = true;
      };
      "[typescript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
    };
  };
}
