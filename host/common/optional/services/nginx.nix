{
  services.nginx = {
    enable = true;
    virtualHosts = let
      enableACME = true;
      forceSSL = true;
    in {
      "danban.ro" = {
        inherit enableACME forceSSL;
        root = "/var/www/danban.ro";
      };
      "valyntyler.com" = {
        inherit enableACME forceSSL;
        root = "/var/www/valyntyler.com";
      };
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
