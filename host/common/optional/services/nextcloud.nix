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
    hostName = "localhost";
    config = {
      dbtype = "sqlite";
      adminuser = "root";
      adminpassFile = config.sops.secrets."nextcloud/admin/pass".path;
    };
  };
}
