{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    pipes
    sl

    # tools
    bat
    glow

    # utils
    grub2
    ripgrep
    usbutils
    pciutils
    zip
    unzip
    mkvtoolnix-cli
    nmap
    imagemagick
    jellyfin-ffmpeg
    helvum
    appimage-run

    # applets
    networkmanagerapplet
    blueman
    nwg-look

    # drivers
    pwvucontrol
    brightnessctl
    playerctl

    # notifications
    mako

    # clipboard providers
    wl-clipboard

    # text
    obsidian
    evince
    libreoffice

    # art
    gimp
    inkscape

    # music
    vmpk
    musescore
    reaper
    # lmms

    # VST
    decent-sampler
    vital
    cardinal

    # 3D
    freecad

    # misc.
    qbittorrent
  ];
}
