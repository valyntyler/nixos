{
  services.nginx = {
    enable = true;
    virtualHosts."danban.ro" = {
      enableACME = true;
      forceSSL = true;
      root = "/var/www/danban.ro";
    };
  };
  security.acme = {
    acceptTerms = true;
    certs = {
      "danban.ro".email = "certify@danban.ro";
    };
  };
  networking.firewall.allowedTCPPorts = [80 443];
}
