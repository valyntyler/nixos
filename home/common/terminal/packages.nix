{pkgs, ...}: {
  home.packages = with pkgs; [
    # utils
    alda
    cyme
    duf
    glow
    lsof
    ouch
    sbctl
    stow

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go
  ];
}
