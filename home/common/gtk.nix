{pkgs, ...}: {
  home.packages = with pkgs; [
    # styling
    nwg-look

    # themes
    colloid-gtk-theme
    fluent-gtk-theme
    orchis-theme

    # icons
    tela-circle-icon-theme
    papirus-icon-theme
    gruvbox-plus-icons

    # cursors
    bibata-cursors
    capitaine-cursors-themed
  ];
}
