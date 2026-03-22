{pkgs, ...}: {
  home.packages = with pkgs; [
    bitwarden-desktop
    galaxy-buds-client
    iaito
    karere
    libreoffice-fresh
    obsidian
    openra
    prismlauncher
    pwvucontrol
    qbittorrent
    signal-desktop
    tigervnc
    vmpk
    wl-clipboard
  ];
}
