{pkgs, ...}:
let
  # TODO somehow import from programs/dwm
  dwm = pkgs.dwm.override {
    conf = ../dwm/config.h;
    patches =	[
    ];
  };
in
{
  xsession = {
    enable = true;
    windowManager.command = "${dwm}/bin/dwm";
    #windowManager.i3.enable = true;
  };
}
