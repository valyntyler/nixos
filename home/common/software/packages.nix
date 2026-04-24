{pkgs, ...}: {
  home.packages = with pkgs; [
    bitwarden-desktop
    galaxy-buds-client
    iaito
    jellyfin-desktop
    karere
    libreoffice-fresh
    obsidian
    openra
    prismlauncher
    pwvucontrol
    signal-desktop
    slack
    teams-for-linux
    tigervnc
    vmpk
    wl-clipboard
  ];
}
