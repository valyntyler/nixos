{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    pipes
    sl
    cava

    # tools
    bat
    glow

    # utils
    ripgrep
    btop
    usbutils
    zip
    unzip
    mkvtoolnix-cli
    nmap
    imagemagick

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
