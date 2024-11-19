{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    sl

    # text
    obsidian

    # art
    gimp
    inkscape

    # music
    musescore
  ];
}
