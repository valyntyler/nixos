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
    ripgrep
    usbutils
    zip
    unzip
    mkvtoolnix-cli
    nmap
    imagemagick
    jellyfin-ffmpeg

    # drivers
    pwvucontrol
    brightnessctl
    playerctl
    blueman

    # clipboard providers
    wl-clipboard

    # text
    obsidian

    # art
    gimp
    inkscape

    # music
    vmpk
    musescore
    reaper

    # 3D
    freecad

    # misc.
    qbittorrent
  ];
}
