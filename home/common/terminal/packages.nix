{pkgs, ...}: {
  home.packages = with pkgs; [
    superfile
    circumflex
    # https://github.com/emprcl/signls
    # https://github.com/Broderick-Westrope/tetrigo

    # utils
    alda
    cf-tool
    cyme
    dig
    duf
    glow
    hledger
    imagemagick
    lsof
    ouch
    pass
    radare2
    rcon-cli
    sbctl
    scli
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
