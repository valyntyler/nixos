{ pkgs, ... }:

{
  gtk = {
    enable = true;
    # gtk3.extraConfig.gtk-decoration-layout = "menu:";
    theme = {
      name = "Nordic";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };
}
