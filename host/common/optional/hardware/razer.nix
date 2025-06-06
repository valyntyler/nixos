{pkgs, ...}: {
  hardware.openrazer = {
    enable = true;
    users = ["valyn"];
  };
  environment.systemPackages = with pkgs; [openrazer-daemon];
}
