# Original config by @bartoostveen, modified to suit my needs
{config, ...}: let
  cfg = config.services.collabora-online;
  domain = "office.valyntyler.com";
in {
  services.collabora-online = {
    enable = true;
    settings = {
      net.listen = "127.0.0.1";
      ssl = {
        termination = true;
        enable = false;
      };
    };
  };
  services.nginx.virtualHosts.${domain} = {
    forceSSL = true;
    enableACME = true;
    locations."/" = {
      proxyPass = "http://localhost:${toString cfg.port}";
      proxyWebsockets = true;
    };
  };
}
