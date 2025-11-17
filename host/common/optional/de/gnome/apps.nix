{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # gnome apps
    gnome-boxes
    gnome-sound-recorder
  ];
}
