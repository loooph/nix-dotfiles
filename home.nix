{ config, lib, pkgs, ... }:

let
in
{
  imports = [
    ./programs/nvim
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  # TODO
  # xsession.enable = true;
  # xsession.windowManager.command = "TODO";

  programs.git = {
    enable = true;
    userName = "loooph";
    userEmail = "loooph@gmx.de";
  };

  programs.kitty = {
    enable = true;
  };

}
