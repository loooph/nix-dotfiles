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
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

}
