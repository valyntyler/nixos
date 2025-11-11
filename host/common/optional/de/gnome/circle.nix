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
    video-trimmer
    warp
    wordbook

    # these deserve to be a circle apps
    bottles
    helvum
    packet
    pods
  ];
}
