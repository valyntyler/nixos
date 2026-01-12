{pkgs, ...}: {
  home.packages = with pkgs; [
    bitwarden-desktop
    galaxy-buds-client
    iaito
    karere
    libreoffice-fresh
    obsidian
    prismlauncher
    pwvucontrol
    tigervnc
    vmpk
    wl-clipboard
  ];
}
