{
  programs.kitty = {
    enable = true;
    settings = {
      scrollback_lines = -1;
      scrollback_pager_history_size = 20; # in mb
      enable_audio_bell = false;
      resize_in_steps = true;
      background_opacity = "0.8";
      # colors, using monokai-ish colorscheme for now
      foregound = "#f1ebeb";
      background = "#272822";
      color0 = "#48483e";
      color1 = "#dc2566";
      color2 = "#8fc029";
      color3 = "#d4c96e";
      color4 = "#55bcce";
      color5 = "#9358fe";
      color6 = "#56b7a5";
      color7 = "#acada1";
      color8 = "#76715e";
      color9 = "#fa2772";
      color10 = "#a7e22e";
      color11 = "#e7db75";
      color12 = "#66d9ee";
      color13 = "#ae82ff";
      color14 = "#66efd5";
      color15 = "#cfd0c2";
    };
  };
}
