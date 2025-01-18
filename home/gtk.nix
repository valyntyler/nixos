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
      name = "candy-icons";
      package = pkgs.candy-icons;
    };
  };
}
