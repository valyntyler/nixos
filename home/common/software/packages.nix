{pkgs, ...}: {
  home.packages = with pkgs; [
    alda
    appimage-run
    galaxy-buds-client
    helvum
    hunspell
    hunspellDicts.en_US
    hunspellDicts.ro_RO
    libreoffice-fresh
    nvtopPackages.nvidia
    obsidian
    openscad
    prismlauncher
    pwvucontrol
    tigervnc
    vlc
    wl-clipboard
  ];
}
