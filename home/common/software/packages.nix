{pkgs, ...}: {
  home.packages = with pkgs; [
    appimage-run
    bitwarden-desktop
    galaxy-buds-client
    libreoffice-fresh
    obsidian
    prismlauncher
    pwvucontrol
    tigervnc
    vlc
    vmpk
    wl-clipboard
  ];
}
