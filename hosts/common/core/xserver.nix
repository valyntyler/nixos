{ pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "ro";
    variant = "";
  };

  # disable XTerm
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
