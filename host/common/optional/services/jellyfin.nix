{
  pkgs,
  user,
  ...
}: {
  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];
  services.jellyfin = {
    inherit user;
    enable = true;
    openFirewall = true;
  };
}
