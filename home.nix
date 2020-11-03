{ config, lib, pkgs, ... }:

let
in
{
  imports = [
    ./accounts/email
    ./pkgs.nix
    ./programs/autorandr
    ./programs/git
    ./programs/htop
    ./programs/lesspipe
    ./programs/nvim
    ./programs/password-store
    ./programs/starship
    ./programs/terminal
    ./programs/zoxide
    ./programs/zsh
    ./services/dunst
    ./services/dwm-status
    ./services/picom
    ./services/pscircle
    ./services/redshift
    ./services/udiskie
    ./services/unclutter
    ./services/x
#    ./programs/firefox
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
