{pkgs, ...}: {
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    gcc
    glib
    glibc
    gtk3
    libglvnd
    ncurses
    xorg.libX11
    xorg.libXrender
  ];
}
