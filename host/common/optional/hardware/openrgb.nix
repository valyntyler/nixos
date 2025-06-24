{pkgs, ...}: {
  services.udev.packages = [pkgs.openrgb];
  boot.kernelModules = ["i2c-dev"];
  hardware.i2c.enable = true;
  environment.systemPackages = with pkgs; [openrgb-with-all-plugins];
}
