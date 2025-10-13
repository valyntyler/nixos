{pkgs, ...}: {
  environment.systemPackages = with pkgs; [fwupd];
  services.fwupd.enable = true;
}
