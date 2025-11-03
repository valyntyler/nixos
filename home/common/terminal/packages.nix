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
    gen-license
    license-generator

    # screensavers
    cbonsai
    cmatrix
    sl

    # speedtest
    speedtest-go

    # typing test
    toipe
    ttyper
  ];
}
