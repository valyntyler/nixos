{
  pkgs,
  config,
  ...
}: {
  # initial admin password
  sops.secrets."nextcloud/admin/pass".owner = "nextcloud";
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud32;
    hostName = "cloud.valyntyler.com";
    appstoreEnable = true;
    extraAppsEnable = true;
    extraApps = with config.services.nextcloud.package.packages.apps; {
      inherit
        # ... other apps
        richdocuments # Collabora Online for Nextcloud - https://apps.nextcloud.com/apps/richdocuments
        ;
    };
    config = {
      dbtype = "sqlite";
      adminuser = "root";
      adminpassFile = config.sops.secrets."nextcloud/admin/pass".path;
    };
  };
  services.nginx.virtualHosts.${config.services.nextcloud.hostName} = {
    forceSSL = true;
    enableACME = true;
  };
}
