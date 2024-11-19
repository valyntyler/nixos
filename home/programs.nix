{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    sl

    # tools
    usbutils
    zip
    unzip

    # text
    obsidian

    # art
    gimp
    inkscape

    # music
    musescore
  ];
}
