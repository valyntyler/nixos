{pkgs, ...}: {
  home.packages = with pkgs; [
    android-studio
    arduino-ide
    godot
  ];
}
