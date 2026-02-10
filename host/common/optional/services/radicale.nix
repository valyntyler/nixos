let
  port = 5232;
in {
  networking.firewall.allowedTCPPorts = [port];
  services.nginx.virtualHosts."webdav.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:${toString port}";
  };
  services.radicale = {
    enable = true;
    settings = {
      server.hosts = ["0.0.0.0:${toString port}"];
      auth.type = "none";
      # auth = {
      #   type = "htpasswd";
      #   htpasswd_filename = "/path/to/htpasswd/file/radicale_users";
      #   # hash function used for passwords. May be `plain` if you don't want to hash the passwords
      #   htpasswd_encryption = "bcrypt";
      # };
    };
  };
}
