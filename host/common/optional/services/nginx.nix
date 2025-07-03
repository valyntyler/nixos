{
  services.nginx = {
    enable = true;
    virtualHosts."danban.ro" = {
      enableACME = true;
      forceSSL = true;
      root = "/var/www/danban.ro";
    };
    virtualHosts."valyntyler.com" = {
      enableACME = true;
      forceSSL = true;
      root = "/var/www/valyntyler.com";
    };
  };
  security.acme = {
    acceptTerms = true;
    certs = {
      "danban.ro".email = "certify@danban.ro";
      "valyntyler.com".email = "certify@valyntyler.com";
    };
  };
  networking.firewall.allowedTCPPorts = [80 443];
}
