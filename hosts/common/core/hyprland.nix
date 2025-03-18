{ inputs, ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = [
    inputs.hyprswitch.packages.x86_64-linux.default
    inputs.anyrun.packages.x86_64-linux.default
  ];
}
