{ config, lib, pkgs, ... }:

let
in
{
  imports = [
    ./programs/git
    ./programs/nvim
    ./programs/terminal
#    ./programs/dwm
    ./programs/zsh
    ./programs/x
    ./pkgs.nix
    ./programs/dwm-status
    ./programs/dunst
    ./programs/redshift
    ./programs/starship
  ];

  nixpkgs.config.allowUnfree = true;

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
