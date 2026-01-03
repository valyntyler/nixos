{inputs, ...}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8181;
    serverConfig.Preferences.WebUI = {
      AlternativeUIEnabled = true;
      RootFolder = "${inputs.qbitwebui.packages.x86_64-linux.default}/share/qbitwebui";
    };
  };
  services.nginx.virtualHosts."torrent.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:8181";
  };
}
