{pkgs, ...}: {
  home.packages = with pkgs; [
    # llms
    aichat

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
