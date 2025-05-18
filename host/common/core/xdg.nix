{
  xdg = {
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      wlr.enable = true;
    };
    mime = {
      enable = true;
      defaultApplications = {
        "application/pdf" = "evince.desktop";
        "image/png" = "org.gnome.Loupe.desktop";
        "image/jpeg" = "org.gnome.Loupe.desktop";
        "application/zip" = "org.gnome.FileRoller.desktop";
        "image/svg+xml" = "org.gnome.Loupe.desktop";
        "application/json" = "org.gnome.TextEditor.desktop";
      };
    };
  };
}
