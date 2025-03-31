{ pkgs, ... }:

{
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Disable some default apps
  environment.gnome.excludePackages = with pkgs; [
    yelp
    gnome-tour
  ];

  environment.systemPackages = with pkgs; [
    # gnome extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator

    # gnome circle
    apostrophe
    authenticator
    blanket
    cartridges
    decoder
    drum-machine
    emblem
    errands
    fragments
    fretboard
    gaphor
    graphs
    impression
    junction
    letterpress
    mousai
    switcheroo
    video-trimmer
  ];
}
