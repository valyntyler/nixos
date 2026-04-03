# Credits:
# cheers to @bartoostveen for the config!
{
  pkgs,
  config,
  ...
}: let
  fqdn = "valyntyler.com";
  domain = "cloud.${fqdn}";
  collaboraDomain = "office.${fqdn}";
in {
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud33;
    hostName = domain;
    config = {
      adminpassFile = config.sops.secrets."nextcloud/admin/pass".path;
      dbtype = "pgsql";
    };
    database.createLocally = true;
    configureRedis = true;
    https = true;
    maxUploadSize = "5G";
    phpOptions = {
      "opcache.memory_consumption" = "128";
      "opcache.interned_strings_buffer" = "25";
      "opcache.max_accelerated_files" = "4000";
      "opcache.revalidate_freq" = "60";
      "opcache.enable_cli" = "1";
    };
    extraApps = {
      inherit (pkgs.nextcloud33Packages.apps) richdocuments;
    };
    extraAppsEnable = true;
  };

  services.nginx.recommendedProxySettings = true;
  services.nginx.virtualHosts = {
    ${domain} = {
      forceSSL = true;
      enableACME = true;
    };

    ${collaboraDomain} = {
      forceSSL = true;
      enableACME = true;
      locations."/" = {
        proxyPass = "http://localhost:${toString config.services.collabora-online.port}";
        proxyWebsockets = true;
      };
    };
  };

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

  # infra.backup.jobs.state.paths = [ config.services.nextcloud.home ];
  # TODO: prometheus static config

  # initial admin password
  sops.secrets."nextcloud/admin/pass".owner = "nextcloud";
  # sops.secrets.nextcloud-admin-pass = {
  #   format = "binary";
  #   sopsFile = ../../../../secrets/nextcloud-admin-pass.secret;
  #
  #   owner = "nextcloud";
  #   group = "nextcloud";
  #   mode = "0660";
  # };
}
# {
#   pkgs,
#   config,
#   ...
# }: {
#   services.nextcloud = {
#     enable = true;
#     package = pkgs.nextcloud32;
#     hostName = "cloud.valyntyler.com";
#     config = {
#       dbtype = "sqlite";
#       adminuser = "root";
#       adminpassFile = config.sops.secrets."nextcloud/admin/pass".path;
#     };
#   };
#   services.nginx.virtualHosts.${config.services.nextcloud.hostName} = {
#     forceSSL = true;
#     enableACME = true;
#   };
#   # initial admin password
#   sops.secrets."nextcloud/admin/pass".owner = "nextcloud";
# }

