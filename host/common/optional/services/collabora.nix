{
  lib,
  config,
  ...
}: {
  systemd.services.nextcloud-config-collabora = let
    inherit (config.services.nextcloud) occ;

    wopi_url = "http://[::1]:${toString config.services.collabora-online.port}";
    public_wopi_url = "https://collabora.example.com";
    wopi_allowlist = lib.concatStringsSep "," [
      "127.0.0.1"
      "::1"
    ];
  in {
    wantedBy = ["multi-user.target"];
    after = ["nextcloud-setup.service" "coolwsd.service"];
    requires = ["coolwsd.service"];
    script = ''
      ${occ}/bin/nextcloud-occ config:app:set richdocuments wopi_url --value ${lib.escapeShellArg wopi_url}
      ${occ}/bin/nextcloud-occ config:app:set richdocuments public_wopi_url --value ${lib.escapeShellArg public_wopi_url}
      ${occ}/bin/nextcloud-occ config:app:set richdocuments wopi_allowlist --value ${lib.escapeShellArg wopi_allowlist}
      ${occ}/bin/nextcloud-occ richdocuments:setup
    '';
    serviceConfig = {
      Type = "oneshot";
    };
  };
  networking.hosts = {
    "127.0.0.1" = ["cloud.valyntyler.com" "office.valyntyler.com"];
    "::1" = ["cloud.valyntyler.com" "office.valyntyler.com"];
  };
  services.nginx = {
    enable = true;
    # I recommend these, but it's up to you
    recommendedProxySettings = true;
    recommendedTlsSettings = true;

    virtualHosts."office.valyntyler.com" = {
      enableACME = true;
      forceSSL = true;
      locations."/" = {
        # proxyPass = "http://127.0.0.1:9980";
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
