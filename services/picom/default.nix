{
  services.picom = {
    enable = true;
    blur = true;
    shadow = true;
    extraOptions = ''
      unredir-if-possible = false;
    '';
    vSync = true;
  };
}
