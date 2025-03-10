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
    totem
    file-roller
    gnome-music
    gnome-photos

    # gtk
    sassc
    gtk-engine-murrine

    # tools
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
    dig
    vlc
    nvtop

    # applets
    networkmanagerapplet
    blueman
    pavucontrol
    rofi-wayland

    # drivers
    libinput
    libnotify
    brightnessctl
    playerctl

    # clipboard providers
    wl-clipboard

    # remote desktop
    tigervnc
    # rustdesk

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
