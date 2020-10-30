{ pkgs, config, lib, ... }:
{
  nixpkgs.config.allowUnfree = true;

#	fonts.fonts = with pkgs; [
#		(nerdfonts.override {
#			fonts = [ "FiraCode" "JetBrainsMono" ];
#		})
#    fira-code
#    jetbrains-mono
#	];

 home.packages = with pkgs; [
    # more modern cli tools
		bat
		dust
		hyperfine
    lsd
		procs
		ripgrep
		sd
		tokei
    fd
    tealdeer

    # CLI environment
    # zsh should go to programs probably
		zsh-completions
		zsh-autosuggestions
		zsh-fast-syntax-highlighting
		nix-zsh-completions
    tmux
		starship
		jetbrains-mono
    pandoc
    neofetch
    nmap
    ffmpeg
    texlive.combined.scheme-full
    docker
    git
#    neovim
    htop
    cmatrix
    neomutt
    youtube-dl
    mpv
    zig
    gcc
		zoxide
    wget
    imagemagick
    lynx
    torsocks
    tor
    appimage-run
    glances

    # basic desktop environment
    maim
    slock
    pscircle
    tdesktop
    dmenu
    slstatus
    feh
    firefox
    zathura
    speedcrunch
    xclip
    gimp
    discord
    dwm
    pavucontrol

    # aditional X programs
    wireshark
    ktouch
    lingot
    chromium
    (steam.override { extraPkgs = pkgs: [glxinfo];})
    dia

  ];

  #fonts.fontconfig.defaultFonts.monospace = [ "JetBrains Mono Nerd Font" "FiraCode Nerd Font" ];

  #services.xserver = {
  #  enable = true;
  #  layout = "de";
  #  windowManager.dwm.enable = true;
  #  videoDrivers = [ "nvidia" ];
  #  libinput.enable = true;
  #  config = ''
  #    Section "InputClass"
  #      Identifier "mouse accel"
  #      Driver "libinput"
  #      MatchIsPointer "on"
  #      Option "AccelProfile" "flat"
  #      Option "AccelSpeed" "0"
  #    EndSection
  #  '';
  #};
}
