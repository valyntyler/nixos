{pkgs, ...}: {
  # Enable the GNOME Desktop Environment.
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm = {
    enable = true;
    autoSuspend = false;
  };

  # have nautilus open ghostty
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "ghostty";
  };

  # Disable some default apps
  environment.gnome.excludePackages = with pkgs; [
    yelp
    gnome-tour
    simple-scan
    evince
    totem
  ];

  environment.systemPackages = with pkgs;
    [
      # gnome circle
      apostrophe
      authenticator
      binary
      blanket
      cartridges
      drum-machine
      fragments
      fretboard
      impression
      resources
      tangram
      video-trimmer
      warp

      # these deserve to be a circle apps
      bottles
      helvum
      packet
      pods

      # gnome apps
      gnome-boxes
      gnome-sound-recorder
      papers
      showtime
    ]
    ++ (with pkgs.gnomeExtensions; [
      # gnome extensions
      appindicator
      blur-my-shell
      spotify-tray
    ]);
}
