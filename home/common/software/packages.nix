{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    alda
    appimage-run
    galaxy-buds-client
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice-fresh
    nvtopPackages.nvidia
    obsidian
    openscad
    prismlauncher
    tigervnc
    vlc
    wl-clipboard
  ];
}
