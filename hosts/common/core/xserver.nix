{ pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "ro";
    variant = "";
  };

  # Enable touchpad support
  services.xserver.libinput.enable = true;

  # disable XTerm
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
