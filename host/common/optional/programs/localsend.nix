{pkgs, ...}: {
  environment.systemPackages = with pkgs; [jocalsend];
  programs.localsend = {
    enable = true;
    openFirewall = true;
  };
}
