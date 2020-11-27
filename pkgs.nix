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
    appimage-run
    cmatrix
    docker
    ffmpeg-full
    gcc
    git
    glances
    htop
    imagemagick
    lynx
    mpv
    neofetch
    nix-zsh-completions
    nmap
    p7zip
    pandoc
    starship
    texlive.combined.scheme-full
    tmux
    tor
    torsocks
    wget
    youtube-dl
    zig
    zoxide
    zsh-autosuggestions
    zsh-completions
    zsh-fast-syntax-highlighting
#    neovim

    # basic desktop environment
    discord
    dmenu
    dwm
    feh
    firefox
    gimp
    jetbrains-mono
    libreoffice
    maim
    pavucontrol
    pscircle
    slock
    slstatus
    speedcrunch
    tdesktop
    xclip
    zathura

    # aditional X programs
    (steam.override { extraPkgs = pkgs: [glxinfo];})
    chromium
    dia
    ktouch
    lingot
    openconnect
    torbrowser
    wireshark

  ];
}
