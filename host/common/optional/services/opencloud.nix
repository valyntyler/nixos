let
  host = "cloud.valyntyler.com";
  port = 9200;
in {
  services.opencloud = {
    inherit port;
    enable = true;
    url = "https://${host}";
    address = "127.0.0.1";
    environment = {
      PROXY_TLS = "false"; # disable https when behind reverse-proxy
      INITIAL_ADMIN_PASSWORD = "secure-password";
    };
  };
  services.nginx.virtualHosts.${host} = {
    forceSSL = true;
    enableACME = true;
    locations."/" = {
      proxyPass = "http://127.0.0.1:${toString port}";
      proxyWebsockets = true;
    };
  };
  networking.firewall.allowedTCPPorts = [port];
}
