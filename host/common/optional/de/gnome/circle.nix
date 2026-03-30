{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    apostrophe
    authenticator
    binary
    blanket
    cartridges
    curtail
    diebahn
    drum-machine
    forge-sparks
    fragments
    fretboard
    gnome-decoder
    impression
    keypunch
    resources
    switcheroo
    tangram
    textpieces
    video-trimmer
    warp
    wike
    wordbook

    # these deserve to be a circle apps
    bottles
    crosspipe
    foliate
    fractal
    packet
    pods
    rnote
    varia
  ];
}
