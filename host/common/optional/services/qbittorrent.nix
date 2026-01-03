{inputs, ...}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8181;
    serverConfig.Preferences.WebUI = {
      Username = "admin";
      Password_PBKDF2 = "@ByteArray(Dn9j11tFgSkcUQOY6WS8SA==:vbeQ/SP6v6GcJKKpUylpVm/zcFm4nNPXU5goV/IFzkhuwaTeA3vJG1LCvzanRt9Ohv5WF7ewayBZMNCj0pBgEQ==)";
    };
  };
  users.groups.qbitwebui = {};
  users.users.qbitwebui = {
    home = "/var/lib/qbitwebui";
    createHome = true;
    isSystemUser = true;
    group = "qbitwebui";
  };
  systemd.tmpfiles.rules = [
    "d /var/lib/qbitwebui 0777 qbitwebui qbitwebui  -"
  ];
  systemd.services.qbitwebui = {
    wantedBy = ["multi-user.target"];
    environment = {
      DATABASE_PATH = "/var/lib/qbitwebui";
      SALT_PATH = "/var/lib/qbitwebui";
      PORT = "8182";
    };
    serviceConfig = {
      # EnvironmentFile = "/run/secrets/myenv";
      ExecStart = "${inputs.qbitwebui.packages.x86_64-linux.default}/bin/qbitwebui";
      StateDirectory = "/var/lib/qbitwebui";
      User = "qbitwebui";
      Group = "qbitwebui";
    };
  };
  services.nginx.virtualHosts."torrent.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:8182";
  };
}
