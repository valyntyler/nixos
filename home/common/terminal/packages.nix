{pkgs, ...}: {
  home.packages = with pkgs; [
    # utils
    alda
    cyme
    duf
    glow
    lsof
    ouch
    pass
    stow
    toktop

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
