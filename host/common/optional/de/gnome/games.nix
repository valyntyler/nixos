{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    gnome-2048
    gnome-chess
    gnome-mines
    gnome-sudoku
    gnome-robots
    gnome-nibbles
  ];
}
