{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    static-web-server
  ];
  services.static-web-server = {
    enable = true;
    root = "/var/www/danban.ro";
  };
  networking.firewall.allowedTCPPorts = [8787];
}
