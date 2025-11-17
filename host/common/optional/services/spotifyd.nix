{pkgs, ...}: {
  services.spotifyd.enable = true;
  networking.firewall.allowedTCPPorts = [5353];
  networking.firewall.allowedUDPPorts = [5353];
  environment.systemPackages = with pkgs; [spotifyd];
}
