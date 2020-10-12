{ config, lib, pkgs, ... }:

let
in
{
  imports = [
    ./pkgs.nix
    ./programs/dunst
    ./programs/dwm-status
    ./programs/git
    ./programs/nvim
    ./programs/redshift
    ./programs/starship
    ./programs/terminal
    ./programs/x
    ./programs/zoxide
    ./programs/zsh
#    ./programs/dwm
  ];

  programs.home-manager.enable = true;

  home = {
    keyboard = {
      layout = "de";
    };
    language = {
      base = "en_US.UTF-8";
      address = "de_DE.UTF-8";
      collate = "de_DE.UTF-8";
      ctype = "de_DE.UTF-8";
      measurement = "de_DE.UTF-8";
      messages = "en_US.UTF-8";
      monetary = "de_DE.UTF-8";
      name = "de_DE.UTF-8";
      numeric = "en_US.UTF-8";
      paper = "de_DE.UTF-8";
      telephone = "de_DE.UTF-8";
      time = "de_DE.UTF-8";
    };
  };

}
