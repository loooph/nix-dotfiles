{pkgs, ...}:
let
  # TODO somehow import from programs/dwm, maybe use the window manager as an argument
  dwm = pkgs.dwm.override {
    conf = ../../programs/dwm/config.h;
    patches =	[
    ];
  };
in
{
  xsession = {
    enable = true;
    windowManager.command = "${dwm}/bin/dwm";
    initExtra = ''
      setxkbmap de
    '';
  };
}
