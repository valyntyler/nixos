{pkgs, ...}: {
  home.packages = with pkgs; [
    protonmail-desktop
    protonmail-bridge-gui
  ];
}
