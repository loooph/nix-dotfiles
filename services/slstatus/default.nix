{config, lib, pkgs, ...}:

with lib;

let
  package = (pkgs.slstatus.override { conf=(fileContents ./config.h); });
in {
  systemd.user.services.slstatus = {
    Unit = {
      Description = "DWM status bar service";
      PartOf = [ "graphical-session.target" ];
    };

    Install = { WantedBy = [ "graphical-session.target" ]; };

    Service = { ExecStart = "${package}/bin/slstatus"; };
  };
}
