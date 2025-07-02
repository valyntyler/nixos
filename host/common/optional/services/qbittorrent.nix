{pkgs, ...}: {
  environment.systemPackages = with pkgs; [qbittorrent-nox];
}
