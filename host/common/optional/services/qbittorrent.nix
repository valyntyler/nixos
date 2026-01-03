{inputs, ...}: let
  pkgs = import inputs.nixpkgs-qbitwebui {system = "x86_64-linux";};
in {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8181;
    serverConfig.Preferences.WebUI = {
      AlternativeUIEnabled = true;
      RootFolder = "${pkgs.qbitwebui}/share/qbitwebui";
    };
  };
  services.nginx.virtualHosts."torrent.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:8181";
  };
}
