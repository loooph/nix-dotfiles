{ config, pkgs, lib, ... }:

{
  programs.git = {
    enable = true;
    userName = "loooph";
    userEmail = "loooph@gmx.de";
  };
}
