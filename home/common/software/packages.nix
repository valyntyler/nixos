{pkgs, ...}: {
  home.packages = with pkgs; [
    appimage-run
    bitwarden-desktop
    galaxy-buds-client
    ida-free
    libreoffice-fresh
    obsidian
    prismlauncher
    pwvucontrol
    tigervnc
    vmpk
    wl-clipboard
  ];
}
