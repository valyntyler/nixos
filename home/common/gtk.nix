{pkgs, ...}: {
  home.packages = with pkgs; [
    # styling
    nwg-look

    # themes
    colloid-gtk-theme
    fluent-gtk-theme
    orchis-theme

    # icons
    morewaita-icon-theme

    # cursors
    bibata-cursors
    capitaine-cursors-themed
  ];
}
