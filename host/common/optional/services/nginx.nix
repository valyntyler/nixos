{
  services.nginx = {
    enable = true;
    virtualHosts."danban.ro" = {
      enableACME = true;
      forceSSL = true;
      root = "/var/www/danban.ro";
    };
  };
  security.acme.certs = {
    "danban.ro".email = "certify@danban.ro";
  };
}
