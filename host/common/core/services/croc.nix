{pkgs, ...}: {
  environment.systemPackages = with pkgs; [croc];
  services.croc = {
    enable = true;
    openFirewall = true;
  };
}
