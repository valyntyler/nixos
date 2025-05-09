{pkgs, ...}: {
  # Enable the GNOME Desktop Environment.
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm = {
    enable = true;
    autoSuspend = false;
  };

  # Disable some default apps
  environment.gnome.excludePackages = with pkgs; [
    yelp
    gnome-tour
    simple-scan
  ];

  environment.systemPackages = with pkgs; [
    # gnome extensions
    gnomeExtensions.blur-my-shell
    gnomeExtensions.appindicator
    gnomeExtensions.spotify-tray

    # gnome circle
    apostrophe
    authenticator
    blanket
    cartridges
    drum-machine
    errands
    fragments
    fretboard
    impression
  ];
}
