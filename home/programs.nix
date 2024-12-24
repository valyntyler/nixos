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
    atuin

    # utils
    ripgrep
    btop
    usbutils
    zip
    unzip
    mkvtoolnix-cli
    nmap
    imagemagick
    jellyfin-ffmpeg

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
