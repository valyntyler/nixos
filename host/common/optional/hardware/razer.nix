{pkgs, ...}: {
  hardware.openrazer.enable = true;
  environment.systemPackages = with pkgs; [
    openrazer-daemon
  ];
  users.users."valyn" = {extraGroups = ["openrazer"];};
}
