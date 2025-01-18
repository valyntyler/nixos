{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    pipes
    sl

    # gnome
    nautilus
    baobab

    # gtk
    sassc
    gtk-engine-murrine

    # tools
    bat
    glow

    # emulation
    mesen

    # utils
    grub2
    ripgrep
    usbutils
    pciutils
    zip
    unzip
    mkvtoolnix-cli
    nmap
    imagemagick
    jellyfin-ffmpeg
    helvum
    appimage-run

    # applets
    networkmanagerapplet
    blueman
    nwg-look
    pavucontrol

    # drivers
    libinput
    libnotify
    brightnessctl
    playerctl

    # notifications
    mako

    # clipboard providers
    wl-clipboard

    # text
    obsidian
    evince
    libreoffice

    # art
    gimp
    inkscape

    # music
    vmpk
    musescore
    reaper
    # lmms

    # VST
    decent-sampler
    vital
    cardinal

    # 3D
    freecad

    # misc.
    qbittorrent
  ];
}
