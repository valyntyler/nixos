{pkgs, ...}: {
  home.packages = with pkgs; [
    audacity
    blender
    freecad
    gimp3
    inkscape
    krita
    musescore

    # unfree
    davinci-resolve
    reaper
  ];
}
