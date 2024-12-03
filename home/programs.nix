{ pkgs, ... }:

{
  # browser
  programs.firefox.enable = true;

  # email client
  programs.thunderbird.enable = true;
  programs.thunderbird.profiles.valyn = {
    isDefault = true;
    search.default = "DuckDuckGo";
  };

  home.packages = with pkgs; [
    # screensavers
    cbonsai
    cmatrix
    neofetch
    pipes
    sl

    # tools
    bat
    fzf
    glow

    # utils
    ripgrep
    btop
    usbutils
    zip
    unzip
    wl-clipboard
    mkvtoolnix-cli

    # text
    obsidian

    # art
    gimp
    inkscape

    # music
    vmpk
    musescore
    reaper

    # 3D
    freecad

    # misc.
    qbittorrent
  ];
}
