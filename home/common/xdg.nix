{
  xdg = {
    enable = true;
    autostart.enable = true;
    desktopEntries = builtins.listToAttrs (map (name: {
        inherit name;
        value = {
          name = "";
          noDisplay = true;
        };
      }) [
        "btop"
        "fish"
        "nvim"
        "yazi"
        "spotify-tray"
        "nvtop"
      ]);
    mimeApps = {
      enable = true;
      defaultApplications = {
        "x-scheme-handler/http" = ["firefox.desktop"];
        "x-scheme-handler/https" = ["firefox.desktop"];
        "text/plain" = ["org.gnome.TextEditor.desktop"];
        "image/jpeg" = ["org.gnome.Loupe.desktop"];
        "image/jpg" = ["org.gnome.Loupe.desktop"];
        "image/png" = ["org.gnome.Loupe.desktop"];
        "image/svg+xml" = ["org.inkscape.Inkscape.desktop"];
        "video/webm" = ["org.gnome.Showtime.desktop"];
        "application/pdf" = ["org.gnome.Papers.desktop"];
        "application/zip" = ["org.gnome.FileRoller.desktop"];
        "application/json" = ["org.gnome.TextEditor.desktop"];
      };
    };
  };
}
