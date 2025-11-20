{pkgs, ...}: {
  programs.niri.enable = true;
  services.iio-niri.enable = true;
  environment.systemPackages = with pkgs; [
    niriswitcher
    nirius
    sunsetr
  ];
}
