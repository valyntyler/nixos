{pkgs, ...}: {
  home.packages = with pkgs; [
    # llms
    aichat

    # utils
    cyme
    glow
    stow

    # screensavers
    cbonsai
    cmatrix
    sl
  ];
}
