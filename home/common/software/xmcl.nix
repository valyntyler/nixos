{pkgs, ...}: {
  programs.xmcl = {
    enable = true;
    commandLineArgs = [
      "--password-store=\"gnome-libsecret\""
    ];
    jres = [
      pkgs.jre8
      pkgs.temurin-jre-bin-17
    ];
  };
}
