{pkgs, ...}: {
  home.packages = with pkgs; [
    bitwarden-desktop
    galaxy-buds-client
    ghidra
    iaito
    kanri
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
