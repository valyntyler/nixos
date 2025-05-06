{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # llms
    aichat

    # utils
    glow
    stow

    # screensavers
    cbonsai
    cmatrix
    sl
  ];
}
