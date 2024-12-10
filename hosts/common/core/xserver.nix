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
  services.libinput.enable = true;

  # Clipboard provider
  environment.systemPackages = with pkgs; [ xsel ];

  # disable XTerm
  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
