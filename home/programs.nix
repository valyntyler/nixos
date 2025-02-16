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
    wget

    # dev
    arduino-ide
    arduino-cli
    vscodium
    chromium

    # emulation
    mesen

    # utils
    grub2
    ripgrep
    file
    usbutils
    pciutils
    zip
    unzip
    p7zip
    mkvtoolnix-cli
    nmap
    imagemagick
    jellyfin-ffmpeg
    helvum
    appimage-run
    smartmontools
    hfsprogs
    parted
    gptfdisk

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

    # remote desktop
    tigervnc
    rustdesk

    # vpn
    protonvpn-gui
    protonvpn-cli

    # game
    godot_4

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
