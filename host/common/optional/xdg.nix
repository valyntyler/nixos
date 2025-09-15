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
        "text/*" = ["org.gnome.TextEditor.desktop"];
        "image/*" = ["org.gnome.Loupe.desktop"];
        "application/pdf" = ["org.gnome.Papers.desktop"];
        "application/zip" = ["org.gnome.FileRoller.desktop"];
        "application/json" = ["org.gnome.TextEditor.desktop"];
      };
    };
  };
}
