{pkgs, ...}: {
  home.packages = with pkgs; [
    # utils
    alda
    cyme
    glow
    lsof
    stow

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go
  ];
}
