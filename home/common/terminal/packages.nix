{pkgs, ...}: {
  home.packages = with pkgs; [
    # utils
    alda
    cyme
    duf
    glow
    lsof
    ouch
    stow

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go
  ];
}
