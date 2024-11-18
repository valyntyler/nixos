{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    sl

    # art
    gimp
    inkscape

    # music
    musescore
  ];
}
