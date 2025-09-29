{
  pkgs,
  inputs,
  ...
}: {
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
    pwvucontrol
    signal-desktop
    tigervnc
    vlc
    vmpk
    wl-clipboard
    inputs.winboat.packages.x86_64-linux.winboat
  ];
}
