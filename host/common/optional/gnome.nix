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

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/mutter" = {
          experimental-features = [
            "scale-monitor-framebuffer" # Enables fractional scaling (125% 150% 175%)
            "variable-refresh-rate" # Enables Variable Refresh Rate (VRR) on compatible displays
            "xwayland-native-scaling" # Scales Xwayland applications to look crisp on HiDPI screens
          ];
        };
      };
    }
  ];

  environment.systemPackages = with pkgs;
    [
      # gnome circle
      apostrophe
      authenticator
      binary
      blanket
      cartridges
      curtail
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

      # gnome apps
      gnome-boxes
      gnome-sound-recorder
      gnome-usage
      papers
      showtime

      # drivers
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-good
      gst_all_1.gst-libav
      zbar

      #games
      gnome-2048
      gnome-chess
      gnome-mines
      gnome-sudoku
      gnome-robots
      gnome-nibbles
    ]
    ++ (with pkgs.gnomeExtensions; [
      # gnome extensions
      arc-menu
      just-perfection
      appindicator
      blur-my-shell
      burn-my-windows
      paperwm
      search-light
      spotify-tray
    ]);
}
