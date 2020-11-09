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
    procs
    ripgrep
    sd
    tokei
    fd
    lsd
    tealdeer

    # CLI environment
    # zsh should go to programs probably
    jetbrains-mono
    nix-zsh-completions
    starship
    zoxide
    zsh-autosuggestions
    zsh-completions
    zsh-fast-syntax-highlighting
    appimage-run
    cmatrix
    docker
    ffmpeg
    gcc
    git
    glances
    htop
    imagemagick
    lynx
    mpv
    neofetch
    nmap
    p7zip
    pandoc
    texlive.combined.scheme-full
    tmux
    tor
    torsocks
    wget
    youtube-dl
    zig
#    neovim

    # basic desktop environment
    discord
    dmenu
    dwm
    feh
    firefox
    gimp
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
