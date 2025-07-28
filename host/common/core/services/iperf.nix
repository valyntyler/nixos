{pkgs, ...}: {
  environment.systemPackages = with pkgs; [iperf];
  services.iperf3 = {
    enable = true;
    openFirewall = true;
  };
}
