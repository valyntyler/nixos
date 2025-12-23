{pkgs, ...}: let
  adminpassFile = pkgs.writeText "nextcloud-admin-pass" "admin";
in {
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud32;
    hostName = "localhost";
    config = {
      dbtype = "sqlite";
      adminuser = "admin";
      adminpassFile = "${adminpassFile}";
    };
  };
}
