{pkgs, ...}: {
  environment.systemPackages = with pkgs.gnomeExtensions; [
    appindicator
    arc-menu
    blur-my-shell
    burn-my-windows
    just-perfection
    paperwm
    search-light
    spotify-tray
  ];
}
