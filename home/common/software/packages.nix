{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    inputs.better-control.packages.x86_64-linux.better-control
    alda
    appimage-run
    galaxy-buds-client
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice-fresh
    obsidian
    openscad
    prismlauncher
    tigervnc
    vlc
  ];
}
