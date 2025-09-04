{pkgs, ...}: {
  home.packages = with pkgs; [
    appimage-run
    bitwarden-desktop
    galaxy-buds-client
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice-fresh
    mullvad-vpn
    obsidian
    prismlauncher
    putty
    pwvucontrol
    tigervnc
    vlc
    vmpk
    wl-clipboard
  ];
}
