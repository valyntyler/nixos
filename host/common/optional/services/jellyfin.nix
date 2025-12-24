{
  pkgs,
  user,
  ...
}: {
  services.jellyfin = {
    inherit user;
    enable = true;
    openFirewall = true;
  };
  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];
  services.nginx.virtualHosts."watch.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
    locations."/".proxyPass = "http://127.0.0.1:8096";
  };
}
