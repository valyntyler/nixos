{pkgs, ...}: {
  home.packages = with pkgs; [
    appimage-run
    bitwarden-desktop
    galaxy-buds-client
    gnome-power-manager
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice-fresh
    mullvad-vpn
    obsidian
    prismlauncher
    pwvucontrol
    rpi-imager
    signal-desktop
    tigervnc
    vlc
    vmpk
    wl-clipboard
  ];
}
