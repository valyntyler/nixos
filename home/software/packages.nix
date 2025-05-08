{ pkgs, ... }:

{
  home.packages = with pkgs; [
    appimage-run
    galaxy-buds-client
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice
    prismlauncher
    tigervnc
    vlc
  ];
}
