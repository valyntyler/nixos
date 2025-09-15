{
  xdg = {
    enable = true;

    # enable autostart
    autostart.enable = true;

    # hide some desktop entries
    desktopEntries = {
      btop = {
        name = "";
        noDisplay = true;
      };
      fish = {
        name = "";
        noDisplay = true;
      };
      nvim = {
        name = "";
        noDisplay = true;
      };
      yazi = {
        name = "";
        noDisplay = true;
      };
      spotify-tray = {
        name = "";
        noDisplay = true;
      };
      nvtop = {
        name = "";
        noDisplay = true;
      };
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
