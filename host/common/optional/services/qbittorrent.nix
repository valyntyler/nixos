{inputs, ...}: let
  pkgs = import inputs.nixpkgs-qb-web {system = "x86_64-linux";};
in {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8181;
    serverConfig.Preferences.WebUI = {
      Username = "admin";
      Password_PBKDF2 = "@ByteArray(Dn9j11tFgSkcUQOY6WS8SA==:vbeQ/SP6v6GcJKKpUylpVm/zcFm4nNPXU5goV/IFzkhuwaTeA3vJG1LCvzanRt9Ohv5WF7ewayBZMNCj0pBgEQ==)";
      AlternativeUIEnabled = true;
      RootFolder = "${pkgs.qb-web}/share/qb-web";
    };
  };
  services.nginx.virtualHosts."torrent.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:8181";
    locations."/".extraConfig = ''
      proxy_set_header Host $host;
      proxy_set_header X-Real-IP $remote_addr;
      proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Proto $scheme;
    '';
  };
}
