{config, ...}: {
  services.nginx = {
    enable = true;
    # I recommend these, but it's up to you
    recommendedProxySettings = true;
    recommendedTlsSettings = true;

    virtualHosts."office.valyntyler.com" = {
      enableACME = true;
      forceSSL = true;
      locations."/" = {
        proxyPass = "http://[::1]:${toString config.services.collabora-online.port}";
        proxyWebsockets = true; # collabora uses websockets
      };
    };
  };
  services.collabora-online = {
    enable = true;
    port = 9980; # default
    settings = {
      # Rely on reverse proxy for SSL
      ssl = {
        enable = false;
        termination = true;
      };

      # Listen on loopback interface only, and accept requests from ::1
      net = {
        listen = "loopback";
        post_allow.host = ["::1"];
      };

      # Restrict loading documents from WOPI Host nextcloud.example.com
      storage.wopi = {
        "@allow" = true;
        host = ["cloud.valyntyler.com"];
      };

      # Set FQDN of server
      server_name = "office.valyntyler.com";
    };
  };
}
