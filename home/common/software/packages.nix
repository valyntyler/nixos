{pkgs, ...}: {
  home.packages = with pkgs; [
    appimage-run
    bitwarden-desktop
    galaxy-buds-client
    ghidra
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
