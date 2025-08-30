{pkgs, ...}: {
  home.packages = with pkgs; [
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
