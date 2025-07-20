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
    mullvad-vpn
    nvtopPackages.nvidia
    obsidian
    openscad
    prismlauncher
    pwvucontrol
    rquickshare
    tigervnc
    vlc
    wl-clipboard
  ];
}
