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
    #dust # broken
    fd
    hyperfine
    lsd
    procs
    ripgrep
    sd
    tealdeer
    tokei

    # CLI environment
    # zsh should go to programs probably
    #appimage-run
    cmake
    cmatrix
    docker
    ffmpeg-full
    file
    gdb
    gcc
    ghc
    git
    glances
    gnumake
    htop
    imagemagick
    lm_sensors
    lynx
    man-pages
    mpv
    neofetch
    nix-zsh-completions
    nmap
    p7zip
    pandoc
    starship
    texlive.combined.scheme-full
    tmux
    #tor
    torsocks
    rubber
    wget
    youtube-dl
    zig
    zoxide
    zsh-autosuggestions
    zsh-completions
    zsh-fast-syntax-highlighting

    # basic desktop environment
    dmenu
    dwm
    feh
    firefox
    #gimp
    jetbrains-mono
    libreoffice
    maim
    pavucontrol
    pscircle
    slock
    slstatus
    speedcrunch
    #tdesktop
    thunderbird
    xclip
    zathura

    # aditional X programs
    #(steam.override { extraPkgs = pkgs: [glxinfo];})
    #chromium
    #dia
    #ktouch
    discord
    lingot
    obs-studio
    gimp
    openconnect
    #torbrowser
    wireshark

  ];
}
