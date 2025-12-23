{pkgs, ...}: {
  home.packages = with pkgs; [
    superfile
    circumflex
    # https://github.com/emprcl/signls
    # https://github.com/Broderick-Westrope/tetrigo

    # utils
    alda
    cyme
    duf
    glow
    lsof
    ouch
    pass
    radare2
    rcon-cli
    sops
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
