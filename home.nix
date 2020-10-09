{ config, lib, pkgs, ... }:

let
in
{
  imports = [
    ./programs/git
    ./programs/nvim
    ./programs/terminal
    ./programs/dwm
    ./programs/zsh
    ./pkgs.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  # TODO
  # xsession.enable = true;
  # xsession.windowManager.command = "TODO";
}
