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
      "www.valyntyler.com" = {
        inherit enableACME forceSSL;
        root = "/var/www/valyntyler.com";
      };
      "dev.valyntyler.com" = {
        inherit enableACME forceSSL;
        root = "/var/www/valyntyler.com";
      };
    };
  };
  security.acme = {
    acceptTerms = true;
    defaults.email = "certify@valyntyler.com";
  };
  networking.firewall.allowedTCPPorts = [80 443];
}
