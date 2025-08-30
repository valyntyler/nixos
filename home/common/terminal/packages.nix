{pkgs, ...}: {
  home.packages = with pkgs; [
    # llms
    aichat
    opencode

    # utils
    alda
    cyme
    glow
    stow

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go
  ];
}
