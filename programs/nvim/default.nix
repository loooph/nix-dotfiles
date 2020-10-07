{ config, lib, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = false;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = false;
    withPython = false;
    withPython3 = true;
    withRuby = false;
    plugins = with pkgs.vimPlugins; [
      ale
      deoplete-nvim
      undotree
      vim-airline
      vim-better-whitespace
      vim-fugitive
      vim-gitgutter
    ];
    extraConfig = ''
      syntax enable
      filetype plugin indent on
      set termguicolors
      set autoindent
      set smartindent
      set laststatus=2
      set ruler
      set wildmenu
      set encoding=utf-8
      set autoread
      set undodir=~/.vimundo
      set undofile
      set cursorline
      set lazyredraw
      set mouse=a
      set foldmethod=indent
      set nofoldenable
      set scrolloff=8
      set smartcase
      set title
      set number
      set showcmd
      set background=dark
      set diffopt+=vertical
      noremap n nzz
      noremap N Nzz
      cnoremap w!! w !sudo tee > /dev/null %
      set expandtab
      set tabstop=2
      set shiftwidth=2
    '';
  };
}
