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

    # repo
    license-generator

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go
  ];
}
