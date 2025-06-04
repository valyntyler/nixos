{pkgs, ...}: {
  home.packages = with pkgs; [
    audacity
    blender
    freecad
    gimp3
    inkscape
    krita
    muse-sounds-manager
    musescore

    # unfree
    davinci-resolve
    reaper
  ];
}
