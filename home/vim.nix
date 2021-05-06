{ config, pkgs, ... }:

{
  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-vinegar
      lightline-vim
      #jellybeans-vim
      vim-one
      emmet-vim
      vim-jinja
    ];
    settings = {
      tabstop=2;
      shiftwidth=2;
      number=true;
    };
    extraConfig = ''
      if has('termguicolors')
        set termguicolors
      endif

      let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

      set background=light
      colorscheme one
    '';
  };
}
