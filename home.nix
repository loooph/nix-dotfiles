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

}
