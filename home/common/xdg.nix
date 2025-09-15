{
  xdg = {
    enable = true;

    # enable autostart
    autostart.enable = true;

    # hide some desktop entries
    desktopEntries = let
      hide = {
        name = "";
        noDisplay = true;
      };
    in {
      btop = hide;
      fish = hide;
      nvim = hide;
      yazi = hide;
      spotify-tray = hide;
      nvtop = hide;
    };

    # set default apps
    mimeApps = {
      enable = true;
      defaultApplications = {
        "text/*" = ["org.gnome.TextEditor.desktop"];
        "image/*" = ["org.gnome.Loupe.desktop"];
        "application/pdf" = ["org.gnome.Papers.desktop"];
        "application/zip" = ["org.gnome.FileRoller.desktop"];
        "application/json" = ["org.gnome.TextEditor.desktop"];
      };
    };
  };
}
